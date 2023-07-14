// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  final titleText;
  final subtitleText;

  const ToDo({super.key, this.titleText, this.subtitleText});
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          tileColor: const Color.fromARGB(255, 47, 47, 47),
          title: Text(
            titleText,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color:Colors.white,
            ),
            ),
          subtitle: Text(subtitleText,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w300,
            ),
          )
        );
      }
    }
