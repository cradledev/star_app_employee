import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import widget
import 'package:starappemployee/widgets/common_widget.dart';
import 'package:starappemployee/widgets/customdrawer_widget.dart';

class CreateQuizScreen extends StatefulWidget {
  const CreateQuizScreen({Key key}) : super(key: key);

  @override
  _CreateQuizScreen createState() => _CreateQuizScreen();
}

class _CreateQuizScreen extends State<CreateQuizScreen> {
  // quiz title input text controller
  TextEditingController _quizTitleController;
  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {
    _quizTitleController = TextEditingController();
  }

  void onCreateQuiz() {
    Navigator.of(context).pushNamed(TRANSFORMATION);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text("Create Quiz")),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Start a New Quiz.",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Center(
              child: Text(
                "Enter Quiz Details.",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
            Center(
              child: CustomFormField(
                hintText: "Quiz title",
                headingText: "",
                obsecureText: false,
                suffixIcon: const SizedBox(),
                controller: _quizTitleController,
                maxLines: 1,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
              ),
            ),
            Center(
              child: CustomFormField(
                hintText: "Quiz Description",
                headingText: "",
                obsecureText: false,
                suffixIcon: const SizedBox(),
                controller: _quizTitleController,
                maxLines: 5,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedSmallButtonCustom(
                text: "Create",
                onTap: () {
                  onCreateQuiz();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
