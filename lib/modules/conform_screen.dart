import 'package:flutter/material.dart';
import 'package:task_flutter/shared/components/components.dart';

class ConfirmRestPassword extends StatelessWidget {
  ConfirmRestPassword({Key? key}) : super(key: key);
  final myController = TextEditingController();
  late int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFECF0F3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ShapeContainer(
                  height: 100,
                  width: 100,
                  topleft: 0,
                  topright: 0,
                  bottomLeft: 0,
                  bottomRight: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("images/Logotrak.jpg"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Welcome \nLets get Started",
                    style: TextStyle(
                        color: Color(0XFF193566),
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                ShapeContainer(
                  height: 140,
                  width: 70,
                  topleft: 100,
                  topright: 0,
                  bottomLeft: 100,
                  bottomRight: 0,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffE3EBEB),
                ),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffD4DADA),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: const Color(0XFF9CA1A2).withAlpha(100),
                          offset: const Offset(2, 4),
                          blurRadius: 8,
                          spreadRadius: 2)
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "   insert code ",
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Color(0xff627CA8)),
                        suffix: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.backspace_outlined,
                              color: Color(0xff627CA8),
                            ))),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextButton(
                  function: () {
                    print(1);
                  },
                  text: "1",
                ),
                MyTextButton(
                  function: () {
                    number = 2;
                    print(number);
                  },
                  text: "2",
                ),
                MyTextButton(
                  function: () {
                    print(3);
                  },
                  text: "3",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextButton(
                  function: () {
                    print(4);
                  },
                  text: "4",
                ),
                MyTextButton(
                  function: () {},
                  text: "5",
                ),
                MyTextButton(
                  function: () {},
                  text: "6",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextButton(
                  function: () {},
                  text: "7",
                ),
                MyTextButton(
                  function: () {},
                  text: "8",
                ),
                MyTextButton(
                  function: () {},
                  text: "9",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyTextButton(
                  function: () {},
                  text: "*",
                ),
                MyTextButton(
                  function: () {},
                  text: "0",
                ),
                MyTextButton(
                  function: () {},
                  text: "#",
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend code ",
                  style: TextStyle(color: Color(0xff193566)),
                )),
            Mybutton(
              function: () {},
              height: 60,
              text: "confirm",
              width: 150,
              color: const Color(0XFFECF0F3),
              colortext: const Color(0xff193566),
              bordercolor: const Color(0XFFF9F6FB),
            ),
          ],
        ),
      ),
    );
  }
}
