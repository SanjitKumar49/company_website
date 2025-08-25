import 'package:get/get.dart';
import 'package:sanvan_technology/modules/about/about_page.dart';
import 'package:sanvan_technology/modules/contact/contact_page.dart';
import 'package:sanvan_technology/modules/home/home_page.dart';
import 'package:sanvan_technology/modules/service/service_page.dart';


class AppPages {
  static const initial = '/';

  static final routes = [
    GetPage(name: '/', page: () => const HomePage(),transition: Transition.rightToLeft,),
    GetPage(name: '/about', page: () => const AboutPage(),transition: Transition.rightToLeft),
    GetPage(name: '/service', page: () => const ServicePage(),transition: Transition.rightToLeft),
    GetPage(name: '/contact', page: () => const ContactPage(),transition: Transition.rightToLeft),
  ];
}
