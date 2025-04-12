// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise_title.dart';

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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:''
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label:''
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label:''
          ),
      ]),
      body: SafeArea(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                    
             SizedBox(
              height: 25,
             ),
                    
             //emotion status
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('How do you fell?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold, 
                     color: Colors.white,
                    ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                ],
              ),
                    
              SizedBox(
              height: 25,
             ),
             
             //current mood representation
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //bad
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '😔',
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Bad',
                      style: TextStyle(color: Colors.white,),
                      ),
                ],
              ),
               //Fine
               Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '🙂',
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Fine',
                      style: TextStyle(color: Colors.white,),
                      ),
                ],
              ),
              //Well
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '😄',
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Well',
                      style: TextStyle(color: Colors.white,),
                      ),
                ],
              ),
              //Excellent
              Column(
                children: [
                  EmoticonFace(
                    emoticonFace: '🥳',
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Excellent',
                      style: TextStyle(color: Colors.white,),
                      ),
                ],
              ),
              ],
             ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
            ),
           
           Expanded(
             child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              padding:EdgeInsets.all(25),
              child: Center(
                child: Column(
                  children: [
                    //exercise heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exercises',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        ),
                      ),
                    Icon(Icons.more_horiz),
                  ],
                ),

                SizedBox(
                  height: 20,
                  ),

                   // list view of exercises
                   Expanded(
                     child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          excerciseName: 'Speaking Skills',
                          numberOfExercises: 16,
                          color: Colors.orange,
                        ),
                       ExerciseTile(
                          icon: Icons.person,
                          excerciseName: 'Reading Skills',
                          numberOfExercises: 8,
                          color: Colors.green,
                        ),
                        ExerciseTile(
                          icon: Icons.star,
                          excerciseName: 'Writing Slills',
                          numberOfExercises: 20,
                          color: Colors.pink,
                        ),
                      ],
                     ),
                   ),
                ],
                ),
              )
             ),
           ),
         ], 
        ),
      ),
    );
  }
}