import 'package:starappemployee/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// widget
import 'package:starappemployee/widgets/customdrawer_widget.dart';
import 'package:starappemployee/widgets/common_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreen createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  // tabbar controller
  TabController _tabController;
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _customInit();
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  void _customInit() {
    _tabController = TabController(length: 2, vsync: this);
    setState(() {
      _tabController.index = _selectedIndex;
    });
  }

  void onCreateQuize() {
    Navigator.of(context).pushNamed(CREATE_QUIZ_SCREEN);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {},
      child: Scaffold(
        appBar: const CustomAppBar(title: "Dashboard"),
        drawer: const CustomDrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
          child: Column(
            children: [
              // give the tab bar a height [can change hheight to preferred height]
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  onTap: (index) {},
                  indicator: const OutlineIndicator(),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    // first tab [you can add an icon using the icon property]
                    Tab(
                      child: customTabarItem(0, "Home"),
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      child: customTabarItem(1, "My Quizzes"),
                    ),
                  ],
                ),
              ),
              // tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // first tab bar view widget
                    const Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Second tab bar view widget
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: Text(
                                      "No Quizzes found",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: Text(
                                      "Add quizzes to see them here",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ]),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedSmallButtonCustom(
                                  text: "+ Create",
                                  onTap: () {
                                    onCreateQuize();
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTabarItem(int _index, String _title) {
    if (_index == _selectedIndex) {
      return Container(
        width: MediaQuery.of(context).size.width * 0.35,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          gradient: const RadialGradient(
            center: Alignment(0, 1.5),
            colors: [Colors.white, Color.fromARGB(126, 3, 3, 3)],
            radius: 20,
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 0.1,
              color: Colors.black12,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Center(
            child: Text(
          _title,
          style: const TextStyle(color: Colors.black),
        )),
      );
    } else {
      return Container(
        width: MediaQuery.of(context).size.width * 0.35,
        padding: EdgeInsets.zero,
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
        child: Center(
            child: Text(
          _title,
          style: const TextStyle(color: Colors.black),
        )),
      );
    }
  }
}
