import 'package:flutter/material.dart';

class CvScreen extends StatefulWidget {
  const CvScreen({super.key});

  @override
  State<CvScreen> createState() => _CvScreenState();
}

class _CvScreenState extends State<CvScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("CV",style: TextStyle(color: Colors.black,fontSize: 20)),
        ],
      ),
    );
  }
}