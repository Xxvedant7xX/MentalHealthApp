// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart' ;

class ExerciseTile extends StatelessWidget {
  final icon;
final String excerciseName;
final int numberOfExercises; 
final color;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.excerciseName,
    required this.numberOfExercises,
    required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
                          children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              padding: EdgeInsets.all(16),
                              color: color,
                              child: Icon(
                                icon,
                              color: Colors.white,
                              ),
                              ),
                          ),
                         SizedBox(
                          width: 12,
                          ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //title
                           Text(
                            excerciseName,
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            ),
                           ),
                           SizedBox(
                            height: 5,
                           ),
                           //subtitle
                           Text(
                            numberOfExercises.toString() + ' Exercises',
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 14,
                            ),
                           ),
                          ],
                          ),
                         ],
                         ),
                          Icon(Icons.more_horiz),
                      ],
                      ),
                      ),
    );
  }
}