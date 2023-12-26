import 'package:flutter/material.dart';
import 'package:flutter_mapp/samat.dart';

class Aidin extends StatelessWidget {
  const Aidin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: GestureDetector(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Samat()));
              },
              child: const Text('Next'),
            ),
          ),
        ));
  }
}
