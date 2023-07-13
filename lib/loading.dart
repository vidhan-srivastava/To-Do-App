import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: SpinKitFadingCircle(
          color: Color.fromARGB(255, 245, 204, 57),
          size: 70,
        ),
      ),
    );
  }
}
