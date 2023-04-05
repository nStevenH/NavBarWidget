import 'package:flutter/material.dart';

import '../src/contactPage.dart';
import '../src/element0.dart';
import '../src/element1.dart';
import '../src/element2.dart';
import '../src/element3.dart';
import '../src/element4.dart';
import '../src/element5.dart';


class Provider2 extends ChangeNotifier {

  /// --- différentes variables --- \\\

  final List<Widget> _selectedPage = const [
    element0(),
    element1(),
    element2(),
    element3(),
    element4(),
    element5(),
    contact_page(),
  ];
  List<Widget> get selectedPage => _selectedPage;

  final int _colorNumbers = 0;
  int get colorNumbers => _colorNumbers;

  int _indexProvider = 0;
  int get indexProvider => _indexProvider;

  final Color _colorIcon = Colors.white;
  Color get colorIcon => _colorIcon;

  double _position = -600;
  double get position => _position;

  bool _sideBar = false;
  bool get sidebar => _sideBar;

  /// --- différentes fonctions --- \\\

  // fonction qui détermine l'index de page
  void indexSelection(int index) {
    _indexProvider = index;
    notifyListeners();
  }

  // fonction qui determine l'ouverture et fermeture de la drawer custom
  void sideBarState() {
    _sideBar = !_sideBar;
    _position = _sideBar ? 0 : -600;
    notifyListeners();
  }
}


