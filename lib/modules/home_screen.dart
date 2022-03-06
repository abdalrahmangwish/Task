import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task_flutter/shared/components/components.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GlobalKey<ScaffoldState> ScaffoledKey = GlobalKey<ScaffoldState>();
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScaffoledKey,
      drawer: ClipRRect(
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(200)),
          child: Container(
            color: const Color(0XFFECF0F3),
            child: Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                      child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('images/1.jpg'),
                  )),
                  ListTile(
                    title: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF263441),
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  ListTile(
                    title: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Privacy policy",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF263441),
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  ListTile(
                    title: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Terms",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF263441),
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  ListTile(
                    title: Container(
                      child: FlutterSwitch(
                        width: 60.0,
                        height: 40.0,
                        valueFontSize: 15.0,
                        toggleSize: 20.0,
                        value: status,
                        activeColor: Color(0XFFA35FE9),
                        borderRadius: 30.0,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Mode",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF263441),
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  ListTile(
                    title: Mybutton(
                      function: () {},
                      height: 54,
                      text: "Register",
                      width: 200,
                      color: const Color(0XFFA35FE9),
                      colortext: const Color(0XFFCFBDEE),
                      bordercolor: const Color(0XFFCFBDEE),
                    ),
                  ),
                  const ListTile(
                    title: Center(
                      child: Text(
                          "Copyright © 2021 NetFarmy\n       All right reserved."),
                    ),
                  )
                ],
              ),
            ),
          )),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      ShapeContainer(
                        color: const Color(0xFFEFD23D),
                        height: 200,
                        width: 120,
                        topleft: 0,
                        topright: 10,
                        bottomLeft: 0,
                        bottomRight: 200,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 50),
                          child: IconButton(
                              onPressed: () {
                                ScaffoledKey.currentState!.openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white,
                              ))),
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    "images/logo.jpg",
                    width: 135.0,
                    height: 124.5,
                  )
                ],
              ),
              Mybutton(
                function: () {},
                height: 112,
                text: "Register",
                width: 200,
                color: const Color(0XFFF9F6FB),
                colortext: const Color(0XFFA35FE9),
                bordercolor: const Color(0XFFF9F6FB),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mybutton(
                    function: () {},
                    height: 97,
                    text: "About Us",
                    width: 140,
                    color: const Color(0XFFF9F6FB),
                    colortext: const Color(0XFFA35FE9),
                    bordercolor: const Color(0XFFF9F6FB),
                  ),
                  Mybutton(
                    function: () {},
                    height: 97,
                    text: "contan",
                    width: 140,
                    color: const Color(0XFFF9F6FB),
                    colortext: const Color(0XFFA35FE9),
                    bordercolor: const Color(0XFFF9F6FB),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mybutton(
                    function: () {},
                    height: 97,
                    text: "Investment\n     Guide",
                    width: 140,
                    color: const Color(0XFFF9F6FB),
                    colortext: const Color(0XFFA35FE9),
                    bordercolor: const Color(0XFFF9F6FB),
                  ),
                  Mybutton(
                    function: () {},
                    height: 97,
                    text: "Centrs",
                    width: 140,
                    color: const Color(0XFFF9F6FB),
                    colortext: const Color(0XFFA35FE9),
                    bordercolor: const Color(0XFFF9F6FB),
                  ),
                ],
              ),
              Mybutton(
                function: () {},
                height: 56,
                text: "Register",
                width: 335,
                color: const Color(0XFFA35FE9),
                colortext: const Color(0XFFFFFFFF),
                bordercolor: const Color(0XFFF9F6FB),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
