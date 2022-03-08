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

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreen createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  AppState state;
  // textfield controller
  TextEditingController _firtnameController;
  TextEditingController _lastnameController;
  TextEditingController _dateofbirthController;
  TextEditingController _retailoutletController;
  // radio group button
  bool _value = false;
  int val = -1;

  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {
    state = Provider.of<AppState>(context, listen: false);
    _firtnameController = TextEditingController();
    _lastnameController = TextEditingController();
    _dateofbirthController = TextEditingController();
    _retailoutletController = TextEditingController();
  }

  void onContinue() {
    String _firstname = _firtnameController.text.trim();
    String _lastname = _lastnameController.text.trim();
    String _dateofbirth = _dateofbirthController.text.trim();
    String _retailoutlet = _retailoutletController.text.trim();
    // if (_email.isNotEmpty &&
    //     _password.isNotEmpty &&
    //     _firstandlastname.isNotEmpty) {
    //   var _user = {
    //     "email": _email,
    //     "password": _password,
    //     "username": _firstandlastname
    //   };
    //   state.user = jsonEncode(_user);
    //   Navigator.of(context).pushReplacementNamed(DASHBORAD_SCREEN);
    // } else {
    //   state.notifyToastDanger(
    //       context: context, message: "User credential must not empty.");
    // }
    Navigator.of(context).pushReplacementNamed(DAILYPROGRAM_SCREEN);
  }

  @override
  void dispose() {
    _firtnameController.dispose();
    _lastnameController.dispose();
    _dateofbirthController.dispose();
    _retailoutletController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: CustomHeightAppBar(
          context: context,
          title: buildHeader(
            context,
            urlImage:
                "https://gravatar.com/avatar/ccfb7ec473050725cf223a077d815162?s=400&d=robohash&r=x",
            name: "UserName",
            email: "Subscription Type: Corporate",
          ),
        ),
        drawer: const CustomDrawerWidget(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              padding: const EdgeInsets.only(left: 60, right: 60, top: 30),
              child: Column(
                children: [
                  CustomFormField(
                    headingText: "Frist Name",
                    hintText: "User",
                    obsecureText: false,
                    controller: _firtnameController,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormField(
                    headingText: "Last name",
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    hintText: "Name",
                    obsecureText: true,
                    controller: _lastnameController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.zero,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 1,
                                        groupValue: val,
                                        onChanged: (value) {
                                          setState(() {
                                            val = value;
                                          });
                                        },
                                      ),
                                      const Expanded(
                                        child: Text('Male'),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 2,
                                        groupValue: val,
                                        onChanged: (value) {
                                          setState(() {
                                            val = value;
                                          });
                                        },
                                      ),
                                      const Expanded(
                                        child: Text('Female'),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            headingText: "Date of Birthday",
                            maxLines: 1,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.datetime,
                            hintText: "11/11/1980",
                            obsecureText: true,
                            controller: _dateofbirthController,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomFormField(
                            headingText: "Retail outlet selection",
                            maxLines: 1,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.text,
                            hintText: "",
                            obsecureText: true,
                            controller: _retailoutletController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButtonCustom(
                            onTap: onContinue,
                            text: "Continue",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeader(
    BuildContext context, {
    String urlImage,
    String name,
    String email,
  }) =>
      Material(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(urlImage),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
