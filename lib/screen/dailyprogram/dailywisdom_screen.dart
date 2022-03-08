import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// provider
import 'package:starappemployee/provider/index.dart';
// widget
import 'package:starappemployee/widgets/customdrawer_widget.dart';
import 'package:starappemployee/widgets/common_widget.dart';

class DailyWisdomScreen extends StatefulWidget {
  const DailyWisdomScreen({Key key}) : super(key: key);

  @override
  _DailyWisdomScreen createState() => _DailyWisdomScreen();
}

class _DailyWisdomScreen extends State<DailyWisdomScreen> {
  AppState state;

  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {
    state = Provider.of<AppState>(context, listen: false);
  }

  void onTransition() {
    // Navigator.of(context).pushReplacementNamed(DAILYPROGRAMDETAIL_SCREEN);
  }

  void onTransformation() {
    Navigator.of(context).pushReplacementNamed(DAILYPROGRAMDETAIL_SCREEN);
  }

  void onMaintenance() {
    // Navigator.of(context).pushReplacementNamed(DAILYPROGRAM_SCREEN);
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
        resizeToAvoidBottomInset: true,
        appBar: const CustomAppBar(title: Text("Daily Wisdom")),
        drawer: const CustomDrawerWidget(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
              child: Column(
                children: [
                  CustomButtionSimilarToField(
                    headingText: "Transformation",
                    buttonText: "Audio Only",
                    onTap: onTransformation,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButtionSimilarToField(
                    headingText: "Transition",
                    buttonText: "Text Only",
                    onTap: onTransition,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButtionSimilarToField(
                    headingText: "Maintenance",
                    buttonText: "Video Only",
                    onTap: onMaintenance,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
