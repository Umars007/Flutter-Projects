import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shoping_list/data/categories.dart';
import 'package:shoping_list/models/grocery_item.dart';
import 'package:shoping_list/widgets/new_item.dart';
import 'package:http/http.dart' as http;
import 'package:typewritertext/typewritertext.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> _groceryitem = [];
  var _isloading = true;
  String? _error;
  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  void _loadItems() async {
    final url = Uri.https(
        "shopping-app-3be04-default-rtdb.firebaseio.com", "shoping_list.json");
    try {
      final respose = await http.get(url);

      if (respose.statusCode >= 400) {
        setState(() {
          _error = ("Failed To fetch data please try again later");
        });
      }
      final Map<String, dynamic> listdata = jsonDecode(respose.body);
      final List<GroceryItem> loadedItems = [];
      for (final item in listdata.entries) {
        final category = categories.entries
            .firstWhere(
                (catitem) => catitem.value.title == item.value["category"])
            .value;
        loadedItems.add(
          GroceryItem(
            id: item.key,
            name: item.value["name"],
            quantity: item.value["quantity"],
            category: category,
          ),
        );
      }
      setState(() {
        _groceryitem = loadedItems;
        _isloading = false;
      });
    } catch (error) {
      setState(() {
        _error = "You Have Not Internet Connection";
      });
    }
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItem(),
      ),
    );
    if (newItem == null) {
      return;
    }
    setState(() {
      _groceryitem.add(newItem);
    });
  }

  void _removeitem(GroceryItem item) async {
    final index = _groceryitem.indexOf(item);
    setState(() {
      _groceryitem.remove(item);
    });
    final url = Uri.https("shopping-app-3be04-default-rtdb.firebaseio.com",
        "shoping_list/${item.id}.json");

    final responce = await http.delete(url);
    if (responce.statusCode >= 400) {
      setState(() {
        _groceryitem.insert(index, item);
      });
    }
    if (responce.body == "null") {
      setState(() {
        _isloading = false;
      });
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: TypeWriterText(
        text: Text(
          "No items added yet..  ",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        duration: Duration(milliseconds: 40),
      ),
    );
    if (_isloading) {
      content = const Center(
        child: CircularProgressIndicator(),
      );
    } else {}
    if (_groceryitem.isNotEmpty) {
      content = ListView.builder(
        itemCount: _groceryitem.length,
        itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction) {
            _removeitem(_groceryitem[index]);
          },
          key: ValueKey(_groceryitem[index].id),
          child: ListTile(
            title: Text(_groceryitem[index].name),
            leading: Container(
              height: 24,
              width: 24,
              color: _groceryitem[index].category.color,
            ),
            trailing: Text(_groceryitem[index].quantity.toString()),
          ),
        ),
      );
    }

    if (_error != null) {
      content = Center(
        child: Text(_error!),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Groceries.."),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
            iconSize: 35,
            color: Colors.blue,
          )
        ],
      ),
      body: content,
    );
  }
}
