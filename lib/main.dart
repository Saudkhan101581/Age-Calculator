import 'package:flutter/material.dart';

void main() {
  runApp(tasbeehCounterApp());
}

class tasbeehCounterApp extends StatefulWidget {
  const tasbeehCounterApp({super.key});

  @override
  State<tasbeehCounterApp> createState() => _tasbeehCounterAppState();
}

class _tasbeehCounterAppState extends State<tasbeehCounterApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/tasbeeh.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 200),
              child: Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                //color: Colors.black,
                child: Text(
                  '$count',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoMono',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 485, left: 215),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(Icons.add, size: 55, color: Colors.amber),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 390, left: 305),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                icon: Icon(Icons.refresh, size: 35, color: Colors.amber),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 390, left: 142),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (count != 0) {
                      count--;
                    } else {
                      count == 0;
                    }
                  });
                },
                icon: Icon(Icons.remove, size: 35, color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 140),
              child: Text(
                'Minimize',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360, left: 313),
              child: Text(
                'Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 630, left: 90),
              child: Text(
                'Developed By SAUD KHAN',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
