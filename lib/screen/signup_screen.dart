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
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _firstAndLastnameController;
  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {
    state = Provider.of<AppState>(context, listen: false);
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _firstAndLastnameController = TextEditingController();
  }

  void onSave() {
    String _email = _emailController.text.trim();
    String _password = _emailController.text.trim();
    String _firstandlastname = _firstAndLastnameController.text.trim();
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
    Navigator.of(context).pushReplacementNamed(DASHBORAD_SCREEN);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstAndLastnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const CustomAppBar(title: "SIGN UP"),
        drawer: const CustomDrawerWidget(),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Column(
                children: [
                  CustomFormField(
                    headingText: "Email",
                    hintText: "axl.loon@gmail.com",
                    obsecureText: false,
                    suffixIcon: const SizedBox(),
                    controller: _emailController,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomFormField(
                    headingText: "Frist and Last name",
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.text,
                    hintText: "Axl Loon",
                    obsecureText: true,
                    controller: _firstAndLastnameController,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomFormField(
                    headingText: "Password",
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    hintText: "Password",
                    obsecureText: true,
                    controller: _passwordController,
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      color: appMainColor,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButtonCustom(
                    onTap: onSave,
                    text: "Save",
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
