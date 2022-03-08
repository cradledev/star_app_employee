import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import widget
import 'package:starappemployee/widgets/common_widget.dart';
import 'package:starappemployee/widgets/customdrawer_widget.dart';

class TransformationQuestionScreen extends StatefulWidget {
  const TransformationQuestionScreen({Key key}) : super(key: key);

  @override
  _TransformationQuestionScreen createState() =>
      _TransformationQuestionScreen();
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class _TransformationQuestionScreen
    extends State<TransformationQuestionScreen> {
  // dropdown init
  String selectedValue;
  List<String> items = [
    'MSQ Single Option Correct',
    'MSQ Multiple Option Correct',
    'Text Answer',
    'Numeric Answer',
  ];

  @override
  void initState() {
    super.initState();
    _customInit();
    setState(() {});
  }

  void _customInit() {}

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
            Expanded(
              child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("Question Type"),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: CustomDropdownButton2(
                        hint: 'Select Item',
                        buttonWidth: MediaQuery.of(context).size.width * 0.9,
                        dropdownWidth: MediaQuery.of(context).size.width * 0.9,
                        dropdownItems: items,
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "+ Add Question",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
