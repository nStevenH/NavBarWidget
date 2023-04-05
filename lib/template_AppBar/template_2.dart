import 'package:appbar/custom/buttonCustom/button_onHover2.dart';
import 'package:appbar/custom/iconMenu/elementBurgerMenu_2.dart';
import 'package:appbar/custom/logo_custom.dart';
import 'package:appbar/custom/underlineCustom.dart';
import 'package:appbar/provider/provider_template2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../custom/iconMenu/menuBurger_animation.dart';
import '../custom/textField_custom.dart';

// ignore: camel_case_types
enum typeDevice {
  mobil,
  tablet,
  normal,
  desktop,
  xl
}

// ignore: camel_case_types, must_be_immutable
class template_2 extends StatelessWidget {
  template_2({Key? key}) : super(key: key);

  typeDevice _currentWidth = typeDevice.desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 500) {
          _currentWidth = typeDevice.mobil;
        } else if (constraints.maxWidth >= 500 && constraints.maxWidth < 768) {
          _currentWidth = typeDevice.tablet;
        } else if (constraints.maxWidth >= 768 && constraints.maxWidth < 992) {
          _currentWidth = typeDevice.normal;
        } else if (constraints.maxWidth >= 992 && constraints.maxWidth < 1200) {
          _currentWidth = typeDevice.desktop;
        } else if (constraints.maxWidth >= 1200) {
          _currentWidth = typeDevice.xl;
        }

        return Scaffold(
          body: Stack(
            children: [
              Consumer<Provider2>(
                builder: (context, providers, child) {
                  return Center(
                    child: providers.selectedPage
                        .elementAt(providers.indexProvider),
                  );
                },
              ),
              _currentWidth == typeDevice.mobil
                  ? const elementBurgerMenu2() : const SizedBox(),

              _currentWidth == typeDevice.mobil
              ? Positioned(
                top: 20,
                child: Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 15.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Logo(
                        image: 'assets/images/Vauth_logo_black.png',
                        height: 55,
                        width: 55,
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      burgerMenu(
                        icon: AnimatedIcons.menu_close,
                        iconColor: Colors.black,
                      ),
                    ],
                  ),
                )
              ) : const SizedBox(),
              _currentWidth == typeDevice.tablet
              ? Positioned(
                  top: 20,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          child: SizedBox(
                            height: 300,
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.end,
                                  children: [
                                    const searchBar(
                                      hintText: 'Search...',
                                      height: 15,
                                      width: 110,
                                      iconSize: 13,
                                      textSize: 9,
                                      hintSize: 9,
                                      borderRadius: 5,
                                      borderColor: Color(0xff1a1a1a),
                                      backgroundColor: Color(0xffF3F6F7),
                                    ),
                                    const SizedBox(
                                      height: 45,
                                    ),
                                    SizedBox(
                                      width: 314,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              buttonHover2(
                                                fontFamily: '',
                                                textSize: 16,
                                                text: 'page 1',
                                                selectPage: 0,
                                                route: '/',
                                                colorEntry: Colors.grey,
                                                colorOut: Colors.black,
                                              ),
                                              const Underline(
                                                index: 0,
                                                width: 55,
                                                height: 1.5,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              buttonHover2(
                                                fontFamily: '',
                                                textSize: 16,
                                                text: 'page 2',
                                                selectPage: 1,
                                                route: '/',
                                                colorEntry: Colors.grey,
                                                colorOut: Colors.black,
                                              ),
                                              const Underline(
                                                index: 1,
                                                width: 55,
                                                height: 1.5,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              buttonHover2(
                                                fontFamily: '',
                                                textSize: 16,
                                                text: 'page 3',
                                                selectPage: 2,
                                                route: '/',
                                                colorEntry: Colors.grey,
                                                colorOut: Colors.black,
                                              ),
                                              const Underline(
                                                index: 2,
                                                width: 55,
                                                height: 1.5,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              buttonHover2(
                                                fontFamily: '',
                                                textSize: 16,
                                                text: 'page 4',
                                                selectPage: 3,
                                                route: '/',
                                                colorEntry: Colors.grey,
                                                colorOut: Colors.black,
                                              ),
                                              const Underline(
                                                index: 3,
                                                width: 55,
                                                height: 1.5,
                                                color: Colors.black,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                const VerticalDivider(
                                  width: 20,
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-1, 1),
                          //TODO: Changer le logo dans la propriété 'image
                          child: Logo(
                            image: 'assets/images/Vauth_logo_black.png',
                            height: 55,
                            width: 55,
                          ),
                        ),
                      ],
                    ),
                  ),
              ) : const SizedBox(),
              _currentWidth == typeDevice.normal
              ? Positioned(
                top: 20,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                children: [
                                  const searchBar(
                                    hintText: 'Search...',
                                    height: 15,
                                    width: 110,
                                    iconSize: 13,
                                    textSize: 9,
                                    hintSize: 9,
                                    borderRadius: 5,
                                    borderColor: Color(0xff1a1a1a),
                                    backgroundColor: Color(0xffF3F6F7),
                                  ),
                                  const SizedBox(
                                    height: 45,
                                  ),
                                  SizedBox(

                                    width: 364,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 1',
                                              selectPage: 0,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 0,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 2',
                                              selectPage: 1,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 1,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 3',
                                              selectPage: 2,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 2,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 4',
                                              selectPage: 3,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 3,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const VerticalDivider(
                                width: 20,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1, 1),
                        //TODO: Changer le logo dans la propriété 'image
                        child: Logo(
                          image: 'assets/images/Vauth_logo_black.png',
                          height: 55,
                          width: 55,
                        ),
                      ),
                    ],
                  ),
                ),
              ) : const SizedBox(),
              _currentWidth == typeDevice.desktop
              ? Positioned(
                top: 20,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: SizedBox(
                          height: 300,
                          width: 450,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                children: [
                                  const searchBar(
                                    hintText: 'Search...',
                                    height: 15,
                                    width: 110,
                                    iconSize: 13,
                                    textSize: 9,
                                    hintSize: 9,
                                    borderRadius: 5,
                                    borderColor: Color(0xff1a1a1a),
                                    backgroundColor: Color(0xffF3F6F7),
                                  ),
                                  const SizedBox(
                                    height: 45,
                                  ),
                                  SizedBox(

                                    width: 414,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 1',
                                              selectPage: 0,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 0,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 2',
                                              selectPage: 1,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 1,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 3',
                                              selectPage: 2,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 2,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 4',
                                              selectPage: 3,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 3,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const VerticalDivider(
                                width: 20,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1, 1),
                        //TODO: Changer le logo dans la propriété 'image
                        child: Logo(
                          image: 'assets/images/Vauth_logo_black.png',
                          height: 55,
                          width: 55,
                        ),
                      ),
                    ],
                  ),
                ),
              ) : const SizedBox(),
              _currentWidth == typeDevice.xl
              ? Positioned(
                top: 20,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: SizedBox(
                          height: 300,
                          width: 450,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                children: [
                                  const searchBar(
                                    hintText: 'Search...',
                                    height: 15,
                                    width: 110,
                                    iconSize: 13,
                                    textSize: 9,
                                    hintSize: 9,
                                    borderRadius: 5,
                                    borderColor: Color(0xff1a1a1a),
                                    backgroundColor: Color(0xffF3F6F7),
                                  ),
                                  const SizedBox(
                                    height: 45,
                                  ),
                                  SizedBox(

                                    width: 414,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 1',
                                              selectPage: 0,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 0,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 2',
                                              selectPage: 1,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 1,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 3',
                                              selectPage: 2,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 2,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            buttonHover2(
                                              fontFamily: '',
                                              textSize: 16,
                                              text: 'page 4',
                                              selectPage: 3,
                                              route: '/',
                                              colorEntry: Colors.grey,
                                              colorOut: Colors.black,
                                            ),
                                            const Underline(
                                              index: 3,
                                              width: 55,
                                              height: 1.5,
                                              color: Colors.black,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const VerticalDivider(
                                width: 20,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment(-1, 1),
                        //TODO: Changer le logo dans la propriété 'image
                        child: Logo(
                          image: 'assets/images/Vauth_logo_black.png',
                          height: 55,
                          width: 55,
                        ),
                      ),
                    ],
                  ),
                ),
              ) : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
