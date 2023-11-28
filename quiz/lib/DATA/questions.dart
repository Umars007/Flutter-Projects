import 'package:quiz/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    ' Flutter developed by??',
    [
      'Google',
      'Facebook',
      'Oracle',
      'IBM',
    ],
  ),
  QuizQuestion(
    'What is Flutter?',
    [
      'A UI toolkit',
      'A programming language',
      'An operating system',
      'A database management system',
    ],
  ),
  QuizQuestion(
    'Flutter is primarily used for developing:',
    [
      'Mobile applications',
      'Web applications',
      'Desktop applications',
      'Embedded systems',
    ],
  ),
  QuizQuestion(
    'Which programming language is used for Flutter development?',
    [
      'Dart',
      'Java',
      'Python',
      'Swift',
    ],
  ),
  QuizQuestion(
    'What is the widget in Flutter?',
    [
      'A graphical user interface element',
      'A mathematical function',
      'A database table',
      'A programming language feature',
    ],
  ),
  QuizQuestion(
    'In Flutter, what is a "StatelessWidget"?',
    [
      'A widget without a fixed state',
      'A widget that can change dynamically',
      'A widget that is always visible',
      'A widget with complex logic',
    ],
  ),
  QuizQuestion(
    'Which command is used to create a new Flutter project?',
    [
      'flutter create',
      'flutter init',
      'flutter start',
      'flutter new',
    ],
  ),
  QuizQuestion(
    'What is the primary function of the "pubspec.yaml" file in Flutter?',
    [
      'To define project dependencies',
      'To store user interface layouts',
      'To configure the Flutter SDK',
      'To manage database connections',
    ],
  ),
  QuizQuestion(
    'Which command is used to run a Flutter app on an emulator or physical device?',
    [
      'flutter run',
      'flutter build',
      'flutter start',
      'flutter deploy',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "hot reload" feature in Flutter?',
    [
      'To update the app with new code changes without restarting',
      'To restart the entire application',
      'To optimize the app for better performance',
      'To debug the app in real-time',
    ],
  ),
  QuizQuestion(
    'What is the main function in a Dart file?',
    [
      'main()',
      'start()',
      'execute()',
      'begin()',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a button in Flutter?',
    [
      'FlatButton',
      'ButtonWidget',
      'ClickWidget',
      'ActionWidget',
    ],
  ),
  QuizQuestion(
    'In Flutter, what does the term "Scaffold" refer to?',
    [
      'A material design visual structure',
      'A state management technique',
      'A type of widget',
      'A navigation system',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "BuildContext" in Flutter?',
    [
      'To manage the context of a widget',
      'To define the build method of a widget',
      'To handle user interactions',
      'To specify the layout of a widget',
    ],
  ),
  QuizQuestion(
    'What does the "async" keyword indicate in Dart?',
    [
      'A function that returns a Future',
      'A function that executes synchronously',
      'A function that performs asynchronous tasks',
      'A function that requires additional authorization',
    ],
  ),
  QuizQuestion(
    'Which data type is used for handling a collection of values in Dart?',
    [
      'List',
      'Array',
      'Set',
      'Map',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "setState" method in Flutter?',
    [
      'To rebuild the widget tree',
      'To set the state of a widget',
      'To define the layout of a widget',
      'To handle user inputs',
    ],
  ),
  QuizQuestion(
    'Which package is commonly used for HTTP requests in Flutter?',
    [
      'http',
      'networking',
      'rest',
      'connect',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "Navigator" in Flutter?',
    [
      'To manage the navigation stack',
      'To control the device\'s hardware',
      'To handle asynchronous operations',
      'To format text in the UI',
    ],
  ),
  QuizQuestion(
    'Which method is called when a StatefulWidget is inserted into the tree?',
    [
      'initState()',
      'build()',
      'insert()',
      'create()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "Container" widget in Flutter?',
    [
      'To define the layout of a widget',
      'To handle user inputs',
      'To create a new screen',
      'To manage state in a widget',
    ],
  ),
  QuizQuestion(
    'Which widget is used for creating a scrollable list of widgets in Flutter?',
    [
      'ListView',
      'ScrollWidget',
      'ListScroll',
      'ScrollList',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "Future" class in Dart?',
    [
      'To represent a value or error that may be available in the future',
      'To handle exceptions in asynchronous code',
      'To create a delayed operation',
      'To define a constant value',
    ],
  ),
  QuizQuestion(
    'Which method is called when a user taps on a button in Flutter?',
    [
      'onTap()',
      'onClick()',
      'onPress()',
      'handleTap()',
    ],
  ),
  QuizQuestion(
    'In Flutter, how can you add padding around a widget?',
    [
      'Using the Padding widget',
      'Setting the padding property of the widget',
      'Using the Spacing widget',
      'Adding a margin to the widget',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "PageRouteBuilder" class in Flutter?',
    [
      'To define custom page transitions',
      'To create a new page in the app',
      'To handle routing in the app',
      'To manage state across pages',
    ],
  ),
  QuizQuestion(
    'Which widget is used for displaying a simple piece of text in Flutter?',
    [
      'TextWidget',
      'LabelWidget',
      'StringText',
      'DisplayText',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "AppBar" widget in Flutter?',
    [
      'To display a material design app bar',
      'To manage the application state',
      'To define the layout of the app',
      'To create a navigation bar',
    ],
  ),
  QuizQuestion(
    'Which method is called when a widget is removed from the tree?',
    [
      'dispose()',
      'remove()',
      'onRemove()',
      'destroy()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "SnackBar" widget in Flutter?',
    [
      'To display a brief message at the bottom of the screen',
      'To create a snack menu',
      'To handle user gestures',
      'To define the layout of a widget',
    ],
  ),
  QuizQuestion(
    'Which widget is used for creating a grid of widgets in Flutter?',
    [
      'GridView',
      'GridWidget',
      'GridLayout',
      'GridContainer',
    ],
  ),
  QuizQuestion(
    'In Flutter, what is the purpose of the "Hero" widget?',
    [
      'To create a shared element transition between screens',
      'To define a superhero character',
      'To manage application themes',
      'To display a loading spinner',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "ClipRRect" widget in Flutter?',
    [
      'To clip a child widget with rounded corners',
      'To create a rectangular clipping mask',
      'To rotate a widget',
      'To resize a widget',
    ],
  ),
  QuizQuestion(
    'Which method is called when a widget is updated?',
    [
      'didUpdateWidget()',
      'updateWidget()',
      'widgetUpdate()',
      'onUpdate()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "Form" widget in Flutter?',
    [
      'To create a form for user input',
      'To define the layout of a widget',
      'To manage application state',
      'To handle database operations',
    ],
  ),
  QuizQuestion(
    'Which package is commonly used for state management in Flutter?',
    [
      'provider',
      'stateful',
      'mobx',
      'redux',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "PageRoute" class in Flutter?',
    [
      'To represent a route in the app',
      'To create a new page',
      'To define custom page transitions',
      'To handle navigation between pages',
    ],
  ),
  QuizQuestion(
    'In Flutter, how can you navigate to a new screen?',
    [
      'Using the Navigator',
      'By calling the navigate() function',
      'By using the ScreenManager class',
      'By updating the widget tree',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "GestureDetector" widget in Flutter?',
    [
      'To detect gestures like taps and swipes',
      'To handle user authentication',
      'To define custom gestures',
      'To create animations',
    ],
  ),
  QuizQuestion(
    'Which method is called when a user long-presses on a widget?',
    [
      'onLongPress()',
      'longPress()',
      'handleLongPress()',
      'pressLong()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "MediaQuery" class in Flutter?',
    [
      'To get information about the current device',
      'To manage media files',
      'To handle media playback',
      'To define media queries for responsive design',
    ],
  ),
  QuizQuestion(
    'Which widget is used for creating a tab bar in Flutter?',
    [
      'TabBar',
      'TabWidget',
      'TabContainer',
      'TabView',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "InkWell" widget in Flutter?',
    [
      'To create a material design ink splash',
      'To handle ink printing',
      'To define the layout of a widget',
      'To create a well-shaped container',
    ],
  ),
  QuizQuestion(
    'Which method is called when a user scrolls a widget?',
    [
      'onScroll()',
      'scroll()',
      'handleScroll()',
      'scrolling()',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "Spacer" widget in Flutter?',
    [
      'To create empty space in a Flex container',
      'To handle space navigation',
      'To define the layout of a widget',
      'To add space between widgets',
    ],
  ),
  QuizQuestion(
    'Which class is used for handling date and time in Dart?',
    [
      'DateTime',
      'TimeManager',
      'DateHandler',
      'Clock',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "AspectRatio" widget in Flutter?',
    [
      'To enforce a specific aspect ratio on a child widget',
      'To define the layout of a widget',
      'To handle aspect ratio in images',
      'To create responsive layouts',
    ],
  ),
  QuizQuestion(
    'Which package is commonly used for handling local storage in Flutter?',
    [
      'shared_preferences',
      'local_storage',
      'storage_handler',
      'flutter_storage',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "Opacity" widget in Flutter?',
    [
      'To control the transparency of a child widget',
      'To define the layout of a widget',
      'To manage opacity in images',
      'To create shadow effects',
    ],
  ),
  QuizQuestion(
    'Which widget is used for creating a circular progress indicator in Flutter?',
    [
      'CircularProgressIndicator',
      'ProgressCircle',
      'CircularLoader',
      'Spinner',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the "PageRouteBuilder" class in Flutter?',
    [
      'To define custom page transitions',
      'To create a new page in the app',
      'To handle routing in the app',
      'To manage state across pages',
    ],
  ),
];
