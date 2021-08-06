import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/locator.dart';
import 'package:provider/provider.dart';
import 'package:rank_task/ui/views/pages/bottom_nav.dart';

import 'locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> MultiProvider(
        providers: allProviders,
        child: MaterialApp(
          title: 'Rank Task',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: Theme.of(context)
                .appBarTheme
                .copyWith(brightness: Brightness.dark),
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: BottomNav(),

        ),
      ),
      designSize: Size(375, 812),
    );
  }
}


