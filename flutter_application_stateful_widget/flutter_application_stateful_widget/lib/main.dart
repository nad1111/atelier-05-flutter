import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int compteur = 0;
  double degre = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("StatefulWidget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Atelier 4 - StatefulWidget",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // TEXTE DU COMPTEUR
              Text(
                "La valeur du compteur est : $compteur",
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 20),

              // 3 BOUTONS ( -  reset  + )
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Bouton -
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur--;
                      });
                    },
                    icon: const Icon(Icons.remove),
                    iconSize: 30,
                  ),

                  const SizedBox(width: 20),

                  // Reset
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur = 0;
                      });
                    },
                    icon: const Icon(Icons.refresh),
                    iconSize: 30,
                  ),

                  const SizedBox(width: 20),

                  // Bouton +
                  IconButton(
                    onPressed: () {
                      setState(() {
                        compteur++;
                      });
                    },
                    icon: const Icon(Icons.add),
                    iconSize: 30,
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // TEXTE POUR SLIDER
              const Text(
                "Merci de choisir le degré de rotation",
                style: TextStyle(fontSize: 16),
              ),

              // SLIDER
              Slider(
                value: degre,
                min: 0,
                max: 360,
                onChanged: (value) {
                  setState(() {
                    degre = value;
                  });
                },
              ),

              // TEXTE DU DEGRÉ
              Text(
                "Le degré choisi est ${degre.toStringAsFixed(0)}°",
                style: const TextStyle(fontSize: 18, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
