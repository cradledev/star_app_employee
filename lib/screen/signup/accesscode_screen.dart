import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// provider
import 'package:starappemployee/provider/index.dart';
// widget
import 'package:starappemployee/widgets/common_widget.dart';

class AccessCodeScreen extends StatefulWidget {
  const AccessCodeScreen({Key key}) : super(key: key);

  @override
  _AccessCodeScreen createState() => _AccessCodeScreen();
}

class _AccessCodeScreen extends State<AccessCodeScreen> {
  AppState state;
  // textfield controller
  TextEditingController _accessCodeController;

  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {
    state = Provider.of<AppState>(context, listen: false);
    _accessCodeController = TextEditingController();
  }

  void onContinue() {
    String _accessCode = _accessCodeController.text.trim();
    // if (_accessCode.isNotEmpty) {
    //   var _user = {
    //     "accessCode": _accessCode,
    //   };
    //   state.user = jsonEncode(_user);
    //   Navigator.of(context).pushReplacementNamed(DASHBORAD_SCREEN);
    // } else {
    //   state.notifyToastDanger(
    //       context: context, message: "Access Code must be not empty.");
    // }
    Navigator.of(context).pushReplacementNamed(VALIDATIONSUCCESS_SCREEN);
  }

  @override
  void dispose() {
    _accessCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 1.0,
          leading: SizedBox(
            width: 50,
            height: 50,
            child: IconButton(
              padding: const EdgeInsets.all(0.0),
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 200,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Column(
                children: [
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
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: CustomFormField(
                      headingText: "Access Code",
                      hintText: "Enter corporate or access code here",
                      obsecureText: false,
                      suffixIcon: const SizedBox(),
                      controller: _accessCodeController,
                      maxLines: 1,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButtonCustom(
                    onTap: onContinue,
                    text: "Continue",
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
