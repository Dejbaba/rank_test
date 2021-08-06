import 'package:flutter/material.dart';
import 'package:rank_task/ui/views/pages/home.dart';


import 'base_model.dart';

class BottomNavModel extends ChangeNotifier{

  ///current index of the bottom nav
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;



  ///children of the bottom Nav
  List<Widget>  _children = [
    Home(),
    Container(),
    Container()
  ];

  List<Widget> get children => _children;


  ///updates the current index of the bottom nav
  updateIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }



}