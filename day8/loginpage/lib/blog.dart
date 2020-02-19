// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loginpage/quiz.dart';
import 'package:loginpage/swipeScreen.dart';

class Blogs extends StatefulWidget {
  @override
  BlogsState createState() => BlogsState();
}

class BlogsState extends State<Blogs> {
  static List<String> city_image = [
    './assets/images/image(1).jpeg',
    './assets/images/download.jpeg',
    './assets/images/mumbai(1).jpeg',
    './assets/images/mysore.jpg'
  ];
  static List<String> city_details = [
    'On 14 June 1965 it was renamed Rabindra Setu after the great Bengali poet Rabindranath Tagore, who was the first Indian and Asian Nobel laureate. It is still popularly known as the Howrah Bridge. The bridge is one of four on the Hooghly River and is a famous symbol of Kolkata and West Bengal.',
    'New Delhi, national capital of India. It is situated in the north-central part of the country on the west bank of the Yamuna River, adjacent to and just south of Delhi city (Old Delhi) and within the Delhi national capital territory. ... Area city, 16.5 square miles (42.7 square km). Pop (2001) 302,363.',
    'The Gateway of India is an arch-monument built in the early twentieth century in the city of Mumbai, in the Indian state of Maharashtra. It was erected to commemorate the landing in December 1911 at Apollo Bunder, Mumbai of King-Emperor George V and Queen-Empress Mary, the first British monarch to visit India. ',
    'Mysore Palace also known as Amba Vilas Palace located at the heart of Mysore city is the most prominent tourist destination of Mysore that attracts millions of visitors round the year. This historical palace housed within the Old Fort facing the Chamunda Hills stands as the official residence of the Wadiyar dynasty who ruled the Kingdom of Mysore from 1399 to 1950.'
  ];
  String trip_image = city_image[0];
  String trip_details = city_details[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('About'),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Trip Location'),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_left),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Kumar Ankit"),
              accountEmail: Text("ankitk@gekyants.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.indigo, child: Text("TP")),
            ),
            ListTile(
                title: Text('Kolkata'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    trip_image = city_image[0];
                    trip_details = city_details[0];
                  });
                }),
            Divider(),
            ListTile(
              title: Text('New Delhi'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  trip_image = city_image[1];
                  trip_details = city_details[1];
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('Mumbai'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  trip_image = city_image[2];
                  trip_details = city_details[2];
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('Mysore'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  trip_image = city_image[3];
                  trip_details = city_details[3];
                });
              },
            ),
            ListTile(
              title: Text('Quiz Game'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Swipe Screen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SwipeAction()),
                );
              },
            )
          ],
        ),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: 300,
                  child: Image.asset(trip_image),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    trip_details,
                    style: TextStyle(fontSize: 22),
                  ),
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
