import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_dash_board/generated/l10n.dart';
import 'package:responsive_dash_board/screens/responsive_dash_board.dart';

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const  Locale('en'),
      localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const ResponsiveDashBoard(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF7F9FA),
      ),
    );
  }
}
