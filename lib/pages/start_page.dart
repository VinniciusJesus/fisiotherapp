import 'package:fisiotheapp/pages/index.dart';
import 'package:fisiotheapp/widgets/main_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/person.png"),
              Text(
                "Olá, Marcos!",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Vamos iniciar o seu\ntratamento? :)",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              MainButton(
                "Iniciar Tratamento",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
