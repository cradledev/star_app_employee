import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import widget
import 'package:starappemployee/widgets/common_widget.dart';
import 'package:starappemployee/widgets/customdrawer_widget.dart';

class TranformationScreen extends StatefulWidget {
  const TranformationScreen({Key key}) : super(key: key);

  @override
  _TranformationScreen createState() => _TranformationScreen();
}

class _TranformationScreen extends State<TranformationScreen> {
  // tranformation textfield controller
  TextEditingController _transformController;
  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {
    _transformController = TextEditingController();
  }

  void onAddQuestion() {
    Navigator.of(context).pushNamed(TRANSFORMATIONQUESTION);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Text("Transformation")),
      drawer: const CustomDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomFormField(
                hintText: "To tranform employee",
                headingText: "",
                obsecureText: false,
                suffixIcon: const SizedBox(),
                controller: _transformController,
                maxLines: 1,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onAddQuestion();
                },
                child: const Text(
                  "+ Add Question",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "No Question Found",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Add question to see them there")
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedSmallButtonCustom(
                    onTap: () {},
                    text: "Save",
                  ),
                  OutlineSmallButtonCustom(
                    onTap: () {},
                    text: "Publish",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
