import 'package:flutter/material.dart';
import 'package:task_flutter/shared/components/components.dart';

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECF0F3),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Row(
              children: [
                MyIconButton(
                  width: 40,
                  height: 40,
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0XFF193566),
                  ),
                  function: () {},
                ),
                const Spacer(),
                Image.asset("images/Logotrak.jpg"),
                const Spacer(),
                MyIconButton(
                  width: 40,
                  height: 40,
                  icon: const Icon(
                    Icons.person,
                    color: Color(0XFF193566),
                  ),
                  function: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          const Text(
            "Welcome back\n    dear asma",
            style: TextStyle(
                color: Color(0XFF193566),
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0XFFF1F7F7),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: const Color(0XFFF1F7F7).withAlpha(100),
                        offset: const Offset(5, 8),
                        blurRadius: 10,
                        spreadRadius: 10)
                  ]),
              child: Center(
                child: Stack(
                  children: [
                    MyIconButton(
                      width: 80,
                      height: 80,
                      icon: const Icon(
                        Icons.power_settings_new,
                        color: Color(0xffE10000),
                        size: 50,
                      ),
                      function: () {},
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShapeContainer(
                height: 100,
                width: 60,
                topleft: 0,
                topright: 50,
                bottomLeft: 0,
                bottomRight: 50,
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    "Loguot",
                    style: TextStyle(
                        color: Color(0XFF193566),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            alignment: Alignment.bottomRight,
            child: ShapeContainer(
              height: 60,
              width: 100,
              topleft: 50,
              topright: 50,
              bottomLeft: 0,
              bottomRight: 0,
            ),
          ),
        ],
      ),
    );
  }
}
