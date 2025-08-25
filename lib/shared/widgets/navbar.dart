import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanvan_technology/generated/assets.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          // Logo
          Image.asset(Assets.homeCompanyLogo, height: 40),
          const SizedBox(width: 10),
          Expanded(
            child: const Text("SanVan Technology",
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black)),
          ),
          const Spacer(),
          // Menu
          if (context.width > 600) // Desktop
            Row(
              children: [
                navItem("Home", "/"),
                navItem("Services", "/service"),
                navItem("About", "/about"),
                navItem("Contact", "/contact"),
              ],
            )
          else // Mobile
            PopupMenuButton<String>(
              onSelected: (value) => Get.toNamed(value),
              itemBuilder: (context) => [
                const PopupMenuItem(value: "/", child: Text("Home")),
                const PopupMenuItem(value: "/service", child: Text("Services")),
                const PopupMenuItem(value: "/about", child: Text("About")),
                const PopupMenuItem(value: "/contact", child: Text("Contact")),
              ],
            ),
        ],
      ),
    );
  }

  Widget navItem(String title, String route) {
    return GestureDetector(
      onTap: () => Get.toNamed(route),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black)),
      ),
    );
  }
}
