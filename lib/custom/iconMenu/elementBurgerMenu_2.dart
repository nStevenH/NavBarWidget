import 'package:appbar/provider/provider_template2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../buttonCustom/button_onHover.dart';

// ignore: camel_case_types
class elementBurgerMenu2 extends StatelessWidget {
  const elementBurgerMenu2({Key? key}) : super(key: key);

// TODO: SI BESOIN ! Exécuter une fonction de changement de couleur dans le provider

  @override
  Widget build(BuildContext context) {
    return Consumer<Provider2>(
      builder: (context, providers, child) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 200),
          top: providers.position,
          child: Container(
            color: const Color(0xff282828),

            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                //TODO: add les élements de pages du client
                ListTile(
                  minLeadingWidth: 1,
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title: buttonHover(text: "Pages 1", selectPage: 0, route: "/"),
                ),
                ListTile(
                  minLeadingWidth: 1,
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title: buttonHover(text: "Pages 2", selectPage: 1, route: "/"),
                ),
                ListTile(
                  minLeadingWidth: 1,
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title: buttonHover(text: "Pages 3", selectPage: 2, route: "/"),
                ),
                ListTile(
                  minLeadingWidth: 1,
                  leading: Icon(Icons.add, color: providers.colorIcon),
                  title: buttonHover(text: "Pages 4", selectPage: 3, route: "/"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
