import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  NewPage({super.key});
  final noteTitle = TextEditingController();//user given title will be stored
  final noteData = TextEditingController();//user given note will be stored

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'New Note',
          style: TextStyle(
            color: Color.fromARGB(255, 245, 204, 57),
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            nTitle(),
            const Divider(
              thickness: 0.3,
              color: Color.fromARGB(255, 165, 162, 162),
              height: 0.1,
            ),
            nText(),
          ],
        ),
      ),
    );
  }

  // textfield for title of the new note
  Widget nTitle() {
    return Container(
      padding: const EdgeInsets.all(2),
      color: const Color.fromARGB(255, 0, 0, 0),
      height: 60,
      child: TextField(
        cursorColor: Colors.white,
        autocorrect: false,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
        controller: noteTitle,
        decoration: const InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 165, 162, 162),
            fontSize: 32,
          ),
        ),
      ),
    );
  }

  //text field for data input of the new note
  Widget nText() {
    return Container(
      padding: const EdgeInsets.only(left:5),
      height:600,
      child: TextFormField(
        minLines: 1,
        maxLines: null,
        autocorrect: false,
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.w400,
        ),
        controller: noteData,
        decoration: const InputDecoration(
          hintText: 'Note',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 165, 162, 162),
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
