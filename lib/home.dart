import 'package:flutter/material.dart';
import 'package:note_taking_app/widgets.dart';

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
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBox(),
              const SizedBox(height: 14),
              const Divider(
                height: 20,
                color: Color.fromARGB(255, 165, 162, 162),
                thickness: 2,
              ),
              const Row(
                children: [
                  Text(
                    'To do ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 245, 204, 57),
                        fontSize: 55,
                        fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.pending_actions_sharp,
                    color: Color.fromARGB(255, 245, 204, 57),
                    size: 50,
                  ),
                ],
              ),
              Expanded(
                //this is how the notes will get added and appear here
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return const ToDo(titleText: 'Vidhan', subtitleText: 'bTech');
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                      height: 15,
                      color: Color.fromARGB(255, 165, 162, 162),
                      thickness: 1,);
                    },
                    itemCount: 10,
                    ),
                  ),

                //this is for the icon that will open new page for notes
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left:324,
                        bottom: 3,
                        right:1,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 204, 57),
                        borderRadius: BorderRadius.circular(30),
                       ),
                       child:InkWell(
                        onTap: () {},
                         child: const Icon(
                          size:50,
                          Icons.add,
                         ),
                       )
                    ),
                  ],
                ),
            ],
          ),
      ),
     );
  }


//search notes widget
  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 47, 47, 47),
        borderRadius: BorderRadius.circular(11),
      ),
      height: 60,
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        controller: text,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 165, 162, 162),
          ),
          prefixIconConstraints: const BoxConstraints(
            maxHeight: 40,
            minWidth: 34,
          ),
          hintText: 'Search notes',
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 165, 162, 162),
            fontSize: 20,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: const BorderSide(
                width: 4,
                color: Color.fromARGB(255, 245, 204, 57),
              )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 165, 162, 162),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
