import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterPage extends StatefulWidget {
  const TwitterPage({Key? key}) : super(key: key);

  @override
  State<TwitterPage> createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1DA1F2),
      body: Center(
        child: ZoomOut(
          from: 30,
          animate: active,
          duration: const Duration(seconds: 1),
          child: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const FaIcon(
          FontAwesomeIcons.play,
          color: Color(0xFF1DA1F2),
        ),
        onPressed: () {
          setState(() {
            active = true;
          });
        },
      ),
    );
  }
}
