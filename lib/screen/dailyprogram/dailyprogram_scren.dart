import 'dart:async';

import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// widget
import 'package:starappemployee/widgets/customdrawer_widget.dart';
import 'package:starappemployee/widgets/common_widget.dart';

class DailyProgramScreen extends StatefulWidget {
  const DailyProgramScreen({Key key}) : super(key: key);

  @override
  _DailyProgramScreen createState() => _DailyProgramScreen();
}

class _DailyProgramScreen extends State<DailyProgramScreen> {
  void onContinue() {
    Navigator.of(context).pushReplacementNamed(DIALYWISDOM_SCREEN);
  }

  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {},
      child: Scaffold(
        appBar: const CustomAppBar(title: Text("Daily Wisdom")),
        drawer: const CustomDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 25,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 5,
                    children: [
                      for (var i = 0; i < 30; i++)
                        if (i < 3)
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white, // border color
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                (i + 1).toString(),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // color: Colors.cyanAccent,
                          )
                        else
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: appMainColor, // border color
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                (i + 1).toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            // color: Colors.cyanAccent,
                          )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButtonCustom(
                      text: "Continue",
                      onTap: onContinue,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    OutlineButtonCustom(
                      text: "Reminder",
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
