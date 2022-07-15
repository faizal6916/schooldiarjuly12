import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:school_diary2022/Screens/about.dart';
import 'package:school_diary2022/Screens/downloads.dart';
import 'package:school_diary2022/Screens/my_profile.dart';
import 'package:school_diary2022/Screens/profile.dart';
import 'package:school_diary2022/Screens/report.dart';
import './Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'School Diary',
        theme: ThemeData(
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
          textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp)
        ),
        //home: SplashScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => ProfileScreen(),
          '/about': (context) => AboutSceen(),
          '/downloads': (context) => DownloadScreen(),
          '/myprofile': (context) => MyProfileScreen(),
          '/report': (context) => ReportScreen()
        },
      )
    );
  }
}


