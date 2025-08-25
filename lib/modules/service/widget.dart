import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String desc;

  const ServiceCard({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(desc, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
