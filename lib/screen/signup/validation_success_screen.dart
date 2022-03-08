import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// widget
import 'package:starappemployee/widgets/common_widget.dart';

class ValidationSuccessScreen extends StatefulWidget {
  const ValidationSuccessScreen({Key key}) : super(key: key);

  @override
  _ValidationSuccessScreen createState() => _ValidationSuccessScreen();
}

class _ValidationSuccessScreen extends State<ValidationSuccessScreen> {
  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
    startTime();
  }

  void _customInit() {}

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(SIGNUP_SCREEN);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 60,
                ),
                const SizedBox(height: 15),
                const Text(
                  'Star App',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Access Code Login',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(width: 5, color: Colors.green),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.check,
                      size: 60.0,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Access Authentication Valid',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
