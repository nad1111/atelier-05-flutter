import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageInfos extends StatelessWidget {
  const PageInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Infos")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bienvenue sur la page Infos !"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Page précédente"),
            ),
          ],
        ),
      ),
    );
  }
}
