import 'package:flutter/material.dart';

// ignore: camel_case_types
class searchBar extends StatelessWidget {
  final String hintText;
  final double height;
  final double width;
  final double borderRadius;
  final double iconSize;
  final double hintSize;
  final double textSize;
  final Color borderColor;
  final Color backgroundColor;

  const searchBar({Key? key,
    required this.hintText,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.iconSize,
    required this.hintSize,
    required this.textSize,
    required this.borderColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return searchBarCustom(context);
  }

  //TODO: Terminer le Textfield en ajoutant la fonction de filtre !

  Widget searchBarCustom(BuildContext context) => Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: Center(
      child: TextField(
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: 1,
              color: borderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: 1,
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              width: 1,
              color: borderColor,
            ),
          ),
          contentPadding: const EdgeInsets.all(4),
          prefixIcon: Icon(
            Icons.search,
            color: borderColor,
            size: iconSize,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: borderColor,
            fontSize: hintSize,
            fontWeight: FontWeight.w400,
            fontFamily: 'Open'
          ),
        ),
        style: TextStyle(
          color: borderColor,
          fontSize: textSize,
          fontWeight: FontWeight.w600,
          fontFamily: 'Open'
        ),
      ),
    ),
  );
}
