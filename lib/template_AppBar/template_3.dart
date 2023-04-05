import 'package:appbar/custom/buttonCustom/button_onHover.dart';
import 'package:appbar/custom/logo_custom.dart';
import 'package:appbar/provider/provider_template3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
enum typeDevice { mobil, tablet, normal, desktop, xl }

// ignore: camel_case_types, must_be_immutable
class template_3 extends StatelessWidget {
  template_3({Key? key}) : super(key: key);

  typeDevice _currentWidth = typeDevice.desktop;

  @override
  Widget build(BuildContext context) {

    Provider.of<Provider3>(context, listen: true).appBarAnimation();

    List<Widget> test = [
      Container(height: 500, width: MediaQuery.of(context).size.width, color: Colors.red,),
      Container(height: 500, width: MediaQuery.of(context).size.width, color: Colors.blue,),
      Container(height: 500, width: MediaQuery.of(context).size.width, color: Colors.green,),
      Container(height: 500, width: MediaQuery.of(context).size.width, color: Colors.purple,),
    ];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          _currentWidth = typeDevice.mobil;
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 768) {
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
              Consumer<Provider3>(
                builder: (context, providers, child) {
                  return Center(
                    child: providers.selectedPage
                        .elementAt(providers.indexProvider),
                  );
                },
              ),

              ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return test.elementAt(index);
                },
              ),

              _currentWidth == typeDevice.xl
                  ? Consumer<Provider3>(
                      builder: (context, providers, child) {
                        return AnimatedPositioned(
                          duration: const Duration(milliseconds: 450),
                          top: providers.offset,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            padding: const EdgeInsets.symmetric(horizontal: 80),
                            color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                buttonHover(
                                    text: 'Pages 1', selectPage: 0, route: '/'),
                                buttonHover(
                                    text: 'Pages 2', selectPage: 1, route: '/'),
                                const Logo(
                                  image: 'assets/images/Vauth_logo_black.png',
                                  height: 55,
                                  width: 55,
                                ),
                                buttonHover(
                                    text: 'Pages 3', selectPage: 2, route: '/'),
                                buttonHover(
                                    text: 'Pages 4', selectPage: 3, route: '/'),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
