import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Modular.navigatorKey,
      title: 'Vibe Wallet',
      theme: ThemeData(
        primaryColor: Color(0xFF7A32AF),
        primaryColorDark: Color(0xFF58247F),
        accentColor: Color(0xFF04C1FF),
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
