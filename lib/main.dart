import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tourney/config/dimens.dart';
import 'package:tourney/screens/home_main.dart';
import 'package:tourney/screens/login/login_screen.dart';
import 'package:tourney/screens/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAWzJJb9IRK0SNOz3bm_yeAJ5UlJgawixo",
          appId: "1:639991016592:android:a72077a02ff60c0b833c15",
          messagingSenderId: "639991016592",
          projectId: "tourney-be27f"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return GetMaterialApp(
      title: 'Tourney',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) {
        deviceWidth = MediaQuery.sizeOf(context).width;
        deviceHeight = MediaQuery.sizeOf(context).height;
        deviceAverageSize = (deviceWidth + deviceHeight) / 2;
        statusHeight = MediaQuery.of(context).padding.top;
        textScaleFactorOf = MediaQuery.textScaleFactorOf(context);
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child ?? Container());
      },
      // home: const HomeMain(),
      home: LoginScreen(),
    );
  }
}
