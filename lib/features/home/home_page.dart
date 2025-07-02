import 'package:flutter/material.dart';
import 'package:justread/core/widgets/search.dart';
import 'package:justread/l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: SearchBarWidget(),
      ),

      // Continue Reading
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
          Text(AppLocalizations.of(context)!.continueReading, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ],
      ),

      // Reading Goal

    );
  }
}
