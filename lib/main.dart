import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:starappemployee/constant/constant.dart';
import 'package:starappemployee/screen/signup_screen.dart';
import 'package:starappemployee/screen/splash_screen.dart';
import 'package:starappemployee/screen/home_screen.dart';
import 'package:starappemployee/screen/dashboard_screen.dart';
import 'package:starappemployee/screen/quiz/create_quiz_screen.dart';
import 'package:starappemployee/screen/quiz/transformation_screen.dart';
import 'package:starappemployee/screen/quiz/transformation_question_screen.dart';

import 'package:starappemployee/provider/index.dart';
import 'package:starappemployee/provider/navigation_provider.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.bottom]);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: AppState()),
      ChangeNotifierProvider(
        create: (_) => NavigationProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        HOME_SCREEN: (BuildContext context) => const HomeScreen(),
        SIGNUP_SCREEN: (BuildContext context) => const SignupScreen(),
        DASHBORAD_SCREEN: (BuildContext context) => const DashboardScreen(),
        CREATE_QUIZ_SCREEN: (BuildContext context) => const CreateQuizScreen(),
        TRANSFORMATION: (BuildContext context) => const TranformationScreen(),
        TRANSFORMATIONQUESTION: (BuildContext context) =>
            const TransformationQuestionScreen(),
        // VIDEO_SPALSH: (BuildContext context) => new VideoSplashScreen(),
        // IMAGE_SPLASH: (BuildContext context) => new ImageSplashScreen(),
        // ANIMATED_SPALSH: (BuildContext context) => new AnimatedSplashScreen()
      },
    );
  }
}
