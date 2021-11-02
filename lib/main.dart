import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // 1
  @override
  Widget build(BuildContext context) {
    // #1 A widget’s build() method is the entry point for composing together other widgets to make a new widget.
    // 2
    final ThemeData theme =
        ThemeData(); // #2 A theme determines visual aspects like color. The default ThemeData will show the standard Material defaults
    // 3
    return MaterialApp(
      // #3 MaterialApp uses Material Design and is the widget that will be included in RecipeApp.
      // 4
      title:
          'Recipe Calculator', // #4 The title of the app is a description that the device uses to identify the app. The UI won’t display this.
      // 5
      theme: theme.copyWith(
        // #5 By copying the theme and replacing the color scheme with an updated copy lets you change the app’s colors. Here, the primary color is Colors.grey and the secondary color is Colors.black.
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      // 6
      home: const MyHomePage(
          title:
              'Recipe Calculator'), // #6 This still uses the same MyHomePage widget as before, but now, you’ve updated the title and displayed it on the device.
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //1 - A Scaffold provides the high-level structure for a screen. In this case, you’re using two properties.
    return Scaffold(
        //2 - AppBar gets a title property by using a Text widget that has a title passed in from home: MyHomePage(title: 'Recipe Calculator') in the previous step
        appBar: AppBar(
          title: Text(widget.title),
        ),
        //3 - body has SafeArea, which keeps the app from getting too close to the operating system interfaces such as the notch or interactive areas like the Home Indicator at the bottom of some iOS screens.
        body: SafeArea(
          // TODO: Replace child: Container()
          //4 - SafeArea has a child widget, which is an empty Container widget.
          child: Container(),
        ));
  } // TODO: Add buildRecipeCard() here

}
