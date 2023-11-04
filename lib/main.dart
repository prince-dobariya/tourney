import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tourney/config/dimens.dart';
import 'package:tourney/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
    return GetMaterialApp(
      title: 'Tourney',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) {
        deviceWidth = MediaQuery.sizeOf(context).width;
        deviceHeight = MediaQuery.sizeOf(context).height;
        deviceAverageSize = (deviceWidth + deviceHeight)/2;
        statusHeight = MediaQuery.of(context).padding.top;
        textScaleFactorOf = MediaQuery.textScaleFactorOf(context);
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child??Container());
      },
      home: const SplashScreen(),
    );
  }
}
