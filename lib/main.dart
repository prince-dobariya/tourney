import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourney/config/dimention.dart';
import 'package:tourney/constant/routes.dart';
import 'package:tourney/firebase_options.dart';
import 'package:tourney/screens/chat/chat_home.dart';
import 'package:tourney/screens/home_main.dart';
import 'package:tourney/screens/home_screen.dart';
import 'package:tourney/screens/profile_screen.dart';
import 'package:tourney/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
    return MaterialApp(
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
      initialRoute: splashScreen,
      routes: {
        splashScreen: (_) => const SplashScreen(),
        homeMain: (_) => const HomeMain(),
        homeScreen: (_) => const HomeScreen(),
        profileScreen: (_) => const ProfileScreen(),
        chatHome: (_) => const ChatHome(),
        // chatScreen :(_) => const ChatScreen(),
      },
    );
  }
}
