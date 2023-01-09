// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_4/home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'dart:math';

import 'card.dart';

var rnd = Random();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
// ignore: non_constant_identifier_names

class _HomePageState extends State<HomePage> {
  int points = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Truth and Dare",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          Text(
            points.toString(),
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IndexedStack(
            index: rnd.nextInt(9),
            children: [
              QuestionCards(
                height: 300,
                width: 300,
                questionName: "What is your name?",
                Color: Colors.cyan,
              ),
              QuestionCards(
                height: 295,
                width: 295,
                Color: Colors.red,
                questionName: "Your age",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.green,
                questionName: "Education",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.yellow,
                questionName: "Hobbies",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.amber,
                questionName: "Secret",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.blue[900],
                questionName: "Code!",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.brown,
                questionName: "Prepare for placements",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.pink,
                questionName: "Act dead",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.red[200],
                questionName: "Don't sleep for a day",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.yellow[700],
                questionName: "Do the dishes",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 60,
                width: 130,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    setState(() {
                      points++;
                    });
                  },
                  child: Text(
                    "Completed",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 130,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    setState(() {
                      points--;
                    });
                  },
                  child: Text(
                    "Forfeit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
