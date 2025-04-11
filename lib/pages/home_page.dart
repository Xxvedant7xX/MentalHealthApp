// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Greeting Individual
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi, Vedant!!!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold, 
                 color: Colors.white,
                ),
                ),
                SizedBox(height: 8),
                Text(
                  '10 April, 2025',
                style: TextStyle(color: Colors.blue[100]),
                ),
              ],
            ),
            //Notification Icon
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
              child: Icon(Icons.notifications,
              color: Colors.white,
                ),
               ) 
              ],
             ),
             SizedBox(
              height: 20,
             ),

           // Search Bar
           Container(
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius:BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12),
            child:Row(children: [
              Icon(Icons.search,
              color: Colors.white,
              ),
              SizedBox(
                width: 5,
                ),
              Text(
                'Search',
              style: TextStyle(
                color: Colors.white,
                 fontSize: 15
                 ),
              ),
            ],
            ),
             ),
           ], 
          ),
        ),
      ),
    );
  }
}