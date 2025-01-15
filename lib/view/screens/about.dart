import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  children: [
    Text("About",style: TextStyle(color: Colors.black,fontSize: 20)),
  ],
),
    );
  }
}