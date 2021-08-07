import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/core/viewmodels/bottom_nav_model.dart';
import 'package:rank_task/ui/shared/colors.dart';
import 'package:provider/provider.dart';
import 'package:rank_task/ui/views/widgets/bottom_nav_items.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/ui/views/widgets/gradient_text.dart';

import '../../shared/colors.dart';
import '../../shared/colors.dart';



class BottomNav extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _BottomNav();
  }
}

class _BottomNav extends State<BottomNav> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Consumer<BottomNavModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: mercuryGrey,
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: GradientText(
              'VendPay',
              gradient: LinearGradient(
                colors: [
                  turquoiseGreen,
                  turquoiseBlue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 26.w),
                child: Image.asset("assets/images/notification.png", height: 24.h, width: 21.w,),
              )
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 0.75), // changes position of shadow
                ),
              ],
            ),
            child: BottomNavigationBar(
                onTap: (index) =>  model.updateIndex(index),
                type: BottomNavigationBarType.fixed,
                elevation: 10,
                selectedFontSize: width(context) / 35,
                unselectedFontSize: width(context) / 35,
                backgroundColor: Colors.white,
                currentIndex: model.currentIndex,
                items: userBottomTabItems(context)),
          ),
          body: SafeArea(child: IndexedStack(index: model.currentIndex, children: model.children)),
        ),
      ),
    );

  }













}


