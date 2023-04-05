import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class testl extends StatefulWidget {
  const testl({Key? key}) : super(key: key);

  @override
  State<testl> createState() => _testlState();
}

class _testlState extends State<testl> {
  late ScrollController _controller;
  double pixels = 0;
  double position = 0;

  AnimatedTexttitle(context) {
    if (_controller.hasClients) {
      if (_controller.position.userScrollDirection == ScrollDirection.forward) {
        setState(() {
          position = 0;
        });

      } else
      if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          position = -100;
        });
      }
    }
  }

  @override
  void initState() {

    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      pixels = _controller.position.pixels;
      AnimatedTexttitle(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> listeitem = [
      Container(
        height: 1000,
        width: 500,
        color: Colors.red,
      ),
      Container(
        height: 1000,
        width: 500,
        color: Colors.blue,
      ),
      Container(
        height: 1000,
        width: 500,
        color: Colors.green,
      ),
      Container(
        height: 1000,
        width: 500,
        color: Colors.yellow,
      ),
      Container(
        height: 1000,
        width: 500,
        color: Colors.purple,
      ),
    ];
    return  Scaffold(
      body: Center(
        child: Stack(
          children: [
            ListView.builder(
              controller: _controller,
              itemCount: listeitem.length,
              itemBuilder: (context, index) {
                return listeitem.elementAt(index);
              },
            ),

            AnimatedPositioned(
              top: position,
              duration: Duration(milliseconds: 300),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.white,
                child: Text("$position"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
