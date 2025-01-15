import 'package:flutter/material.dart';

class ExeprienceScreen extends StatefulWidget {
  const ExeprienceScreen({super.key});

  @override
  State<ExeprienceScreen> createState() => _ExeprienceScreenState();
}

class _ExeprienceScreenState extends State<ExeprienceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Experience",style: TextStyle(color: Colors.black,fontSize: 20)),
        ],
      ),
    );
  }
}