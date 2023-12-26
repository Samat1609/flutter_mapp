import 'package:flutter/material.dart';

class Samat extends StatefulWidget {
  Samat({super.key});

  @override
  State<Samat> createState() => _SamatState();
}

class _SamatState extends State<Samat> {
  String word = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('App Title'),
        ),
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.lightGreen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black, primary: Colors.red),
                      onPressed: () {
                        setState(() {
                          word = 'Clicked';
                        });
                      },
                      child: Text(word),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.green,
                        primary: Colors.yellow,
                        shape: CircleBorder(side: BorderSide(width: 1)),
                      ),
                      onPressed: () {
                        setState(() {
                          word = 'Clicked';
                        });
                      },
                      child: Text(word),
                    )
                  ],
                ),
              )
            : Image.asset('assets/images/Снимок экрана (4).png'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
