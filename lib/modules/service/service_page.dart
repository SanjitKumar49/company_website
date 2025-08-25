import 'package:flutter/material.dart';
import 'package:sanvan_technology/modules/service/widget.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Our Services")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: const [
            ServiceCard(title: "Web Development", desc: "We build scalable and secure websites."),
            ServiceCard(title: "Mobile App Development", desc: "Android & iOS apps for your business."),
            ServiceCard(title: "AI & ML Solutions", desc: "Smart AI-driven solutions."),
          ],
        ),
      ),
    );
  }
}
