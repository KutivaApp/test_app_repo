import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int increment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title"), elevation: 3),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/Exams.json'),
              const Text("Incremento"),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (increment > 0) increment--;
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    Text("$increment", style: TextStyle(fontSize: 18)),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (increment < 10) increment++;
                        });
                      },
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
