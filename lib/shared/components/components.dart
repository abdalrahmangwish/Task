// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  double width;
  double height;
  Function function;
  String text;
  Color color;
  Color colortext;
  Color bordercolor;

  Mybutton(
      {Key? key,
      required this.function,
      required this.height,
      required this.text,
      required this.width,
      required this.color,
      required this.colortext,
      required this.bordercolor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: const Color(0XFF9CA1A2).withAlpha(100),
                  offset: const Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: color),
        child: MaterialButton(
          onPressed: () {
            function();
          },
          child: Text(
            text,
            style: TextStyle(color: colortext, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
} //final Widget? suffixIcon;

class MyIconButton extends StatelessWidget {
  Icon icon;
  Function function;
  double width;
  double height;
  MyIconButton(
      {Key? key,
      required this.icon,
      required this.function,
      required this.height,
      required this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: const Color(0xFFECF0F3),
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: const Color(0XFF9CA1A2).withAlpha(100),
                offset: const Offset(2, 6),
                blurRadius: 2,
                spreadRadius: 2)
          ]),
      child: IconButton(
          onPressed: () {
            function();
          },
          icon: icon),
    );
  }
}

class ShapeContainer extends StatelessWidget {
  double? topleft;
  double? topright;
  double? bottomLeft;
  double? bottomRight;
  double width;
  double height;
  Color? color = const Color(0xffECF0F3);
  ShapeContainer(
      {Key? key,
      this.bottomLeft,
      this.bottomRight,
      this.topleft,
      this.topright,
      this.color,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topleft!),
            topRight: Radius.circular(topright!),
            bottomLeft: Radius.circular(bottomLeft!),
            bottomRight: Radius.circular(bottomRight!),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: const Color(0XFF9CA1A2).withAlpha(100),
                offset: const Offset(5, 3),
                blurRadius: 5,
                spreadRadius: 0)
          ]),
    );
  }
}

class MyTextButton extends StatelessWidget {
  String text;
  Function function;

  MyTextButton({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xFFECF0F3),
              borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: const Color(0XFF9CA1A2).withAlpha(100),
                    offset: const Offset(2, 4),
                    blurRadius: 8,
                    spreadRadius: 2)
              ]),
          child: TextButton(
              onPressed: () {
                return function();
              },
              child: Text(
                text,
                style: const TextStyle(fontSize: 30, color: Color(0xff193566)),
              ))),
    );
  }
}
