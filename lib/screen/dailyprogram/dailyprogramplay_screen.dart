import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// widget
import 'package:starappemployee/widgets/common_widget.dart';
import 'package:starappemployee/widgets/customdrawer_widget.dart';

class DailyProgramPlayScreen extends StatefulWidget {
  const DailyProgramPlayScreen({Key key}) : super(key: key);

  @override
  _DailyProgramPlayScreen createState() => _DailyProgramPlayScreen();
}

class _DailyProgramPlayScreen extends State<DailyProgramPlayScreen> {
  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {}

  void onCompleted() {
    // Navigator.of(context).pushReplacementNamed(SIGNUP_SCREEN);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text("Daily Wisdom")),
      drawer: const CustomDrawerWidget(),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.zero,
              child: Row(
                children: const [
                  Text("Day 1/30"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Row(
                children: const [
                  Text("Title: A new beginnig"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.zero,
                    height: MediaQuery.of(context).size.width * 0.6,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.volume_up_sharp,
                        size: MediaQuery.of(context).size.width * 0.6,
                        color: appMainColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  // const Text(
                  //   'In this given scenario, ',
                  //   style: TextStyle(
                  //     fontSize: 16.0,
                  //     fontWeight: FontWeight.normal,
                  //     color: Colors.black,
                  //   ),
                  // ),
                  ElevatedButtonCustom(
                    text: "Completed",
                    onTap: onCompleted,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
