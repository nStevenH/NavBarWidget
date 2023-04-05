import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Logo extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  const Logo({
    Key? key,
    required this.image,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return logoCustom(context);
  }

  Widget logoCustom(BuildContext context) => GestureDetector(
        onTap: () {
          //TODO: Add le path de la page d'accueil
          GoRouter.of(context).push('/');
        },
        //TODO: Add logo client
        child: Image.asset(
          image,
          height: height,
          width: width,
          fit: BoxFit.contain,
        ),
      );
}
