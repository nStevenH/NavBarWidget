import 'package:appbar/provider/provider_template2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider_template1.dart';


// ignore: camel_case_types
class burgerMenu extends StatefulWidget {

  final Color iconColor;
  final AnimatedIconData icon;

  const burgerMenu({Key? key,
    required this.iconColor,
    required this.icon,
  }) : super(key: key);

  @override
  State<burgerMenu> createState() => _burgerMenuState();
}

// ignore: camel_case_types
class _burgerMenuState extends State<burgerMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  bool _menuBurger = false; // Animation du burger

  //TODO: SI BESOIN ! Exécuter une fonction de changement de couleur

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  // fonction de l'animation de l'icon menu
  void burgerAnimation() {
    _menuBurger = !_menuBurger;
    _menuBurger
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {

    return animatedIconCustom();
  }

  Widget animatedIconCustom() => Stack(
      children: [

        // icon menu \\
        GestureDetector(
          onTap: () {
            burgerAnimation();
            Provider.of<Provider2>(context, listen: false).sideBarState();
          },
          child: AnimatedIcon(
            color: widget.iconColor, // variable color,
            icon: widget.icon,
            progress: _animationController,
          ),
        ),
      ],
    );
  }
