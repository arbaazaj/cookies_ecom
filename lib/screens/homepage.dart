import 'package:cookies_ecom/themes/colors.dart';
import 'package:cookies_ecom/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: grey,
      body: CustomAppBar(),
    );
  }
}
