import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NovaPage extends StatefulWidget {
  const NovaPage({super.key});

  @override
  State<NovaPage> createState() => _NovaPageState();
}

class _NovaPageState extends State<NovaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Pagina"),
        elevation: 3,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text("Imagem das Meninas", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Lottie.asset("assets/school.json"),
          ],
        ),
      ),
    );
  }
}
