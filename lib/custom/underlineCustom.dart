import 'package:appbar/provider/provider_template1.dart';
import 'package:appbar/provider/provider_template2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Underline extends StatelessWidget {
  final int index;
  final double width;
  final double height;
  final Color color;

  const Underline({
    Key? key,
    required this.index,
    required this.width,
    required this.color,
    required this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return underlineCustom(context);
  }

  Widget underlineCustom(BuildContext context) =>
      Consumer<Provider2>(
        builder: (context, value, child) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: height,
            width: value.indexProvider == index
                ? width
                : 0,
            color: color,
          );
        },
      );
}
