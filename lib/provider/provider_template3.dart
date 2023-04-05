import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../src/element0.dart';
import '../src/element1.dart';
import '../src/element2.dart';
import '../src/element3.dart';

class Provider3 extends ChangeNotifier {

  /// --- différentes variables --- \\\
  late ScrollController _scrollController;
  ScrollController get scrollController => _scrollController;

  final List<Widget> _selectedPage = const [
    element0(),
    element1(),
    element2(),
    element3(),
  ];
  List<Widget> get selectedPage => _selectedPage;

  double _offset = 0;
  double get offset => _offset;

  double _pixels = 0;
  double get pixels => _pixels;

  int _indexProvider = 0;
  int get indexProvider => _indexProvider;

  /// --- différentes fonctions --- \\\
  void indexSelection(int index) {
    _indexProvider = index;
    notifyListeners();
  }

  void appBarAnimation() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      double pixels = _scrollController.position.pixels;
      if (_scrollController.hasClients) {
        if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          _offset = 0;
        } else if (_scrollController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          _offset = -100;
        }
      }
    });
    notifyListeners();
  }
}