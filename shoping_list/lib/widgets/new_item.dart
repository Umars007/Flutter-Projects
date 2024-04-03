import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shoping_list/data/categories.dart';
import 'package:shoping_list/models/category.dart';

import 'package:http/http.dart' as http;
import 'package:shoping_list/models/grocery_item.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  final _formkey = GlobalKey<FormState>();
  var _entername = "";
  var _enterquantity = 1;
  var _selectedcategory = categories[Categories.vegetables]!;
  var _isSending = false;

  void _saveitem() async {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      setState(() {
        _isSending = true;
      });
      final url = Uri.https("shopping-app-3be04-default-rtdb.firebaseio.com",
          "shoping_list.json");
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(
          {
            "name": _entername,
            "quantity": _enterquantity,
            "category": _selectedcategory.title,
          },
        ),
      );
      final Map<String, dynamic> resdata = json.decode(response.body);

      if (!context.mounted) {
        return;
      } else {}
      Navigator.of(context).pop(
        GroceryItem(
            id: resdata["name"],
            name: _entername,
            quantity: _enterquantity,
            category: _selectedcategory),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add a New Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length > 50) {
                    return "Must Be In Between 1 and 50 characters..";
                  }
                  return null;
                },
                onSaved: (value) {
                  _entername = value!;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Qunatity"),
                      ),
                      keyboardType: TextInputType.number,
                      initialValue: _enterquantity.toString(),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            int.tryParse(value) == null ||
                            int.tryParse(value)! <= 0) {
                          return "Must Be A Valid Positive Number..";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enterquantity = int.parse(value!);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField(
                        value: _selectedcategory,
                        items: [
                          for (final Category in categories.entries)
                            DropdownMenuItem(
                                value: Category.value,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      color: Category.value.color,
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Text(Category.value.title),
                                  ],
                                ))
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedcategory = value!;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _isSending
                        ? null
                        : () {
                            _formkey.currentState!.reset();
                          },
                    child: const Text("Reset"),
                  ),
                  ElevatedButton(
                    onPressed: _isSending ? null : _saveitem,
                    child: _isSending
                        ? const SizedBox(
                            height: 16,
                            width: 16,
                            child: CircularProgressIndicator(),
                          )
                        : const Text("Add Item"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
