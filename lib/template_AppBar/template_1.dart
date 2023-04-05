import 'package:appbar/custom/iconMenu/menuBurger_animation.dart';
import 'package:appbar/custom/logo_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../custom/buttonCustom/button_onHover.dart';
import '../custom/iconMenu/elementBurgerMenu.dart';
import '../provider/provider_template1.dart';

// ignore: camel_case_types
enum typeDevice {
  mobil,
  tablet,
  normal,
  desktop,
}

// ignore: camel_case_types, must_be_immutable
class template_1 extends StatelessWidget {
  template_1({Key? key}) : super(key: key);

  typeDevice _currentWidth = typeDevice.desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          _currentWidth = typeDevice.mobil;
        } else if (constraints.maxWidth > 600 && constraints.maxWidth < 768) {
          _currentWidth = typeDevice.tablet;
        } else if (constraints.maxWidth > 768 && constraints.maxWidth < 992) {
          _currentWidth = typeDevice.normal;
        } else if (constraints.maxWidth > 992) {
          _currentWidth = typeDevice.desktop;
        }

        return Scaffold(
          body: Stack(
            children: [
              Consumer<Provider1>(
                builder: (context, providers, child) {
                  return Center(
                    child: providers.selectedPage
                        .elementAt(providers.indexProvider),
                  );
                },
              ),

              /// AppBar customized \\\
              const elementBurgerMenu(),

              Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(16),
                height: 60,
                color: const Color(0xff282828),
                child: Stack(
                  children: [
                    // Déplacement du logo
                    Align(
                      alignment: _currentWidth == typeDevice.mobil
                          ? Alignment.center
                          : Alignment.centerLeft,
                      child: const Logo(
                        image: 'assets/images/Vauth_logo_white.png',
                        height: 35,
                        width: 35,
                      ),
                    ),
                    _currentWidth == typeDevice.mobil
                        ? const SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buttonHover(
                                text: 'page 1',
                                selectPage: 0,
                                route: '/',
                              ),
                              buttonHover(
                                text: 'page 2',
                                selectPage: 1,
                                route: '/',
                              ),
                              buttonHover(
                                text: 'page 3',
                                selectPage: 2,
                                route: '/',
                              ),
                              buttonHover(
                                text: 'page 4',
                                selectPage: 3,
                                route: '/',
                              ),
                              buttonHover(
                                text: 'page 5',
                                selectPage: 4,
                                route: '/',
                              ),
                              buttonHover(
                                text: 'page 6',
                                selectPage: 5,
                                route: '/',
                              ),
                            ],
                          ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: buttonHover(
                        text: 'contact',
                        selectPage: 6,
                        route: '/',
                      ),
                    ),
                    _currentWidth == typeDevice.mobil
                        ? const Align(
                            alignment: Alignment.centerLeft,
                            child: burgerMenu(
                              icon: AnimatedIcons.menu_close,
                              iconColor: Colors.white,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}