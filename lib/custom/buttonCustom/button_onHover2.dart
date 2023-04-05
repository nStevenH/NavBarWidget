import 'package:appbar/provider/provider_template2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';


// ignore: camel_case_types, must_be_immutable
class buttonHover2 extends StatelessWidget {
  final String text;
  final int selectPage;
  final String route;
  final Color colorEntry;
  final Color colorOut;
  final double textSize;
  final String fontFamily;

  buttonHover2({
    Key? key,
    required this.text,
    required this.selectPage,
    required this.route,
    required this.colorEntry,
    required this.colorOut,
    required this.textSize,
    required this.fontFamily,
  }) : super(key: key);

  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return textButtonCustom2(context);
  }

  Widget textButtonCustom2(BuildContext context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return TextButton(
            onPressed: () {
              // Envoi une information INT qui est utilisé en tant qu'index dans une liste de widget.
              Provider.of<Provider2>(context, listen: false)
                  .indexSelection(selectPage);
              GoRouter.of(context).go(route);
            },
            onHover: (value) {
              setState(() {
                _textColor = value ? colorEntry : colorOut;
              });
            },
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                  (states) => Colors.transparent),
            ),
            child: TextRenderer(
              child: Text(
                text,
                style: TextStyle(
                  //todo: Enregistrer la fontFamily du client
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w600,
                  color: _textColor,
                  fontSize: textSize,
                ),
              ),
            ),
          );
        },
      );
}
