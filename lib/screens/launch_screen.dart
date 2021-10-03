import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // Wait 3 seconds then go to the route of name /main_screen,
    //with replacement the current screen; no back
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/azkar_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: AlignmentDirectional.topEnd, end: AlignmentDirectional.bottomStart, colors: [
            Colors.teal.shade800,
            Colors.teal.shade500,
            Colors.teal.shade300,
            Colors.teal.shade200,
          ]),
        ),
        child: const Text(
          'مسبحة الأذكار',
          style: TextStyle(fontFamily: 'Scheherazade', fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
