import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FinanceAI',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.transparent)),
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 1, 50, 32)),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
