import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import widget
import 'package:starappemployee/widgets/common_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  void onAccessCodeLogin() {
    Navigator.of(context).pushNamed(ACCESSCODE_SCREEN);
  }

  void onCorporateCodeLogin() {
    Navigator.of(context).pushNamed(SIGNUP_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {},
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(10, 16, 63, 0.4),
                  Color.fromRGBO(10, 16, 63, 0.2),
                  Color.fromRGBO(96, 81, 47, 0.2),
                  Color.fromRGBO(181, 146, 30, 0.075)
                ],
                    stops: [
                  0.0,
                  0.3821,
                  0.6867,
                  0.9913
                ])),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 200),
                  const Text(
                    'Welcome to Star App',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Star App',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButtonCustom(
                          onTap: onAccessCodeLogin,
                          text: "Access Code Login",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        OutlineButtonCustom(
                          onTap: onCorporateCodeLogin,
                          text: "Corporate Code Login",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                          child: Text(
                            "Apply for Login Code",
                            style: TextStyle(color: appMainColor),
                          ),
                        )
                      ],
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
}
