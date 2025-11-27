import 'package:flutter/material.dart';
import 'page_infos.dart';
import 'page_profil.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page d'accueil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bienvenue sur la page d'accueil !"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageInfos()),
                );
              },
              child: const Text("Aller à la page Infos"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PageProfil()),
                );
              },
              child: const Text("Aller à la page Profil"),
            ),
          ],
        ),
      ),
    );
  }
}

