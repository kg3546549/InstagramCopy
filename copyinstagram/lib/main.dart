import 'package:flutter/material.dart';
import './style.dart' as style;
import './bottomappbar.dart';
import './feeds.dart' as feeds;
import 'package:http/http.dart' as http;
import 'dart:convert';

List<feeds.Feed> feed = [
  feeds.Feed('example1.jpeg' , 'KG' , 'Test1' , 0) ,
  feeds.Feed('example2.jpeg' , 'KG' , 'Test2' , 1) ,
  feeds.Feed('example3.jpeg' , 'KG' , 'Test3' , 2) ,
];

void main() {
  runApp(MaterialApp(
    theme: style.theme,
    home : MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var mainTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Instagram"),
          ],
        ),
        actions: [
          IconButton(
            icon : Icon(Icons.add_box_outlined) ,
            iconSize: 30,
            onPressed : (){
            },
          ),
        ],
      ),
      body: [
        Home(),
        Text('test'),
      ][mainTab],


      bottomNavigationBar : BottomNavigationBar(
          onTap : (i) {
            setState(() {
              mainTab = i;

            });
          },
          currentIndex: mainTab,
          elevation: 5,
          showSelectedLabels : true,
          showUnselectedLabels : false,
          items : [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined) ,
              label : '홈',

            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label : '쇼핑'),

          ]
      ),

    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // padding: EdgeInsets.all(10),
      itemCount: feed.length,
      itemBuilder : (context,i) {
        return feeds.FeedWidget(
          feed: feed[i],
        );
      }
    );
  }
}
