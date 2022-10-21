import 'package:cursoflutterbasico/gradient_back.dart';
import 'package:cursoflutterbasico/review.dart';
import 'package:cursoflutterbasico/review_list.dart';
import 'package:flutter/material.dart';
import 'description_place.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola mundo AppBar"),
        ),
        body: Center(
          child:
              Stack(
                children: [
                  ListView(
                    children: [
                      DescripcionPlace("Gomara", 3, descriptionDummy),
                      ReviewList()
                    ],
                  ),
                  GradientBack(),
                ],
              )
        )

      )//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
