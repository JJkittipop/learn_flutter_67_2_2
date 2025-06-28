// Step 2: App Screen
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SecondPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.deepOrange],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.6, 0.5),
            tileMode: TileMode.repeated,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Image.asset('assets/images/cartoon.jpg'),
              const SizedBox(height: 50),
              const SpinKitSpinningLines(color: Colors.white),
              const SizedBox(height: 30),
              const Text(
                'Welcome to the Second Page!',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 253, 45, 191),
                  fontFamily: 'Alike',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
