import 'package:appbar/provider/provider_template1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../buttonCustom/button_onHover.dart';

// ignore: camel_case_types
class elementBurgerMenu extends StatelessWidget {
  const elementBurgerMenu({Key? key}) : super(key: key);

// TODO: SI BESOIN ! Exécuter une fonction de changement de couleur dans le provider

  @override
  Widget build(BuildContext context) {
    return Consumer<Provider1>(
      builder: (context, providers, child) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 200),
          top: providers.position,
          child: Container(
            color: const Color(0xff282828),
            height: 368,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                //TODO: add les élements de pages du client
                ListTile(
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title:
                  buttonHover(text: "Pages 1", selectPage: 0, route: "/"),
                  minLeadingWidth: 1,
                ),
                ListTile(
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title:
                  buttonHover(text: "Pages 2", selectPage: 1, route: "/"),
                  minLeadingWidth: 1,
                ),
                ListTile(
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title:
                  buttonHover(text: "Pages 3", selectPage: 2, route: "/"),
                  minLeadingWidth: 1,
                ),
                ListTile(
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title:
                  buttonHover(text: "Pages 4", selectPage: 3, route: "/"),
                  minLeadingWidth: 1,
                ),
                ListTile(
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title:
                  buttonHover(text: "Pages 5", selectPage: 4, route: "/"),
                  minLeadingWidth: 1,
                ),
                ListTile(
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title:
                  buttonHover(text: "Pages 6", selectPage: 5, route: "/"),
                  minLeadingWidth: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
