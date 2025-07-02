import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:justread/core/theme/theme_provider.dart';
import 'package:justread/l10n/app_localizations.dart';
import 'package:justread/l10n/l10n.dart';
import 'package:justread/nav_bar.dart';
import 'package:provider/provider.dart';

void main() async{
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: L10n.all,
      locale: const Locale("en"),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: "JustRead",
      home: const NavBar(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
