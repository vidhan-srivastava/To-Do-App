import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Text(
          'Notes',
          style: TextStyle(
            color: Color.fromARGB(255, 245, 204, 57),
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 47, 47),
              borderRadius: BorderRadius.circular(11),
            ),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.name,
              controller: text,
              decoration: InputDecoration(
                hintText: 'Whats pending ?',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 165, 162, 162),
                  fontSize: 22,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      width: 4,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 165, 162, 162),
                    width: 2,
                  ),
                ),
                suffixIcon: const Icon(
                  Icons.pending_actions_sharp,
                  color: Color.fromARGB(255, 165, 162, 162),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Divider(
            height: 20,
            color: Color.fromARGB(255, 165, 162, 162),
            thickness: 2,
          ),
          const Text(
            'To Do !',
            style: TextStyle(
                color: Color.fromARGB(255, 245, 204, 57),
                fontSize: 66,
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
