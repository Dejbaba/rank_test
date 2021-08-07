import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rank_task/core/constants/app_constants.dart';
import 'package:rank_task/locator.dart';
import 'package:provider/provider.dart';
import 'package:rank_task/ui/views/pages/bottom_nav.dart';
import 'locator.dart';

void main() {
  ///locks the app to portrait mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ///registers view-models
  setupLocator();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

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
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: BottomNav(),

          ),
        ),
        designSize: Size(logicalWidth(), logicalHeight())
      );
  }
}


