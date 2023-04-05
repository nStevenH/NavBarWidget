import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

import '../../provider/provider_template1.dart';


// ignore: camel_case_types, must_be_immutable
class buttonHover extends StatelessWidget {

  final String text;
  final int selectPage;
  final String route;


  buttonHover({

    Key? key,
    required this.text,
    required this.selectPage,
    required this.route,


  }) : super(key: key);

  Color _textColor = Colors.white;
  final Color _colorsEntry = Colors.grey;
  final Color _colorsOut = Colors.white;



  @override
  Widget build(BuildContext context) {
    return textButtonCustom(context);
  }

  Widget textButtonCustom(BuildContext context) => StatefulBuilder(
    builder: (BuildContext context, StateSetter setState){
      return TextButton(
        onPressed: () {
          // Envoi une information INT qui est utilisé en tant qu'index dans une liste de widget.
          Provider.of<Provider1>(context, listen: false).indexSelection(selectPage);
          GoRouter.of(context).go(route);
        },
        onHover: (value){setState((){
          _textColor = value ? _colorsEntry : _colorsOut;
        });},
        style: ButtonStyle(
          overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
        ),
        child: TextRenderer(
          child: Text(
            text,
            style:
              TextStyle(
              //todo: Enregistrer la fontFamily du client
              fontFamily: '',
              fontWeight: FontWeight.w600,
              color: _textColor,
              fontSize: 14,
            ),
          ),
        ),
      );
    },
  );
}
