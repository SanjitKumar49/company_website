import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sanvan_technology/modules/home/widget.dart';
import '../../../shared/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = context.width > 800;

    return Scaffold(
      body: Column(
        children: [
          const Navbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// HERO SECTION
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF3A0CA3), Color(0xFF7209B7)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Flex(
                      direction: isDesktop ? Axis.horizontal : Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// LEFT CONTENT
                        Expanded(
                          flex: isDesktop ? 1 : 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome to\nSanVan Technology",
                                style: TextStyle(
                                  fontSize: isDesktop ? 48 : 32,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "We provide cutting-edge solutions in software development, "
                                    "AI integration, and scalable systems. "
                                    "Helping businesses grow with smart technology.",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () => Get.toNamed("/service"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: const Text(
                                  "Explore Services",
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 40, height: 40),

                        /// RIGHT CONTENT (LOTTIE ANIMATION)
                        if (isDesktop)
                          Expanded(
                            flex: 1,
                            child: Lottie.network(
                              "https://assets7.lottiefiles.com/packages/lf20_9cyyl8i4.json",
                              height: 400,
                              repeat: true,
                            ),
                          )
                        else
                          Lottie.network(
                            "https://assets7.lottiefiles.com/packages/lf20_9cyyl8i4.json",
                            height: 250,
                            repeat: true,
                          ),
                      ],
                    ),
                  ),

                  /// SERVICES SECTION
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                    child: Column(
                      children: [
                        const Text(
                          "Our Services",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.center,
                          children: const [
                            ServiceCard(
                              icon: FontAwesomeIcons.code,
                              title: "Web Development",
                              desc: "Modern, responsive and scalable websites tailored for your business.",
                            ),
                            ServiceCard(
                              icon: FontAwesomeIcons.mobileAlt,
                              title: "Mobile Apps",
                              desc: "Cross-platform mobile apps for Android and iOS.",
                            ),
                            ServiceCard(
                              icon: FontAwesomeIcons.robot,
                              title: "AI Solutions",
                              desc: "Leverage Artificial Intelligence for automation and growth.",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  /// FOOTER
                  Container(
                    width:double.infinity ,
                    color: Colors.grey.shade900,
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Column(
                      children: const [
                        Text("© 2025 SanVan Technology",
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 10),
                        Text("Innovating the future with technology",
                            style: TextStyle(color: Colors.white54)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

