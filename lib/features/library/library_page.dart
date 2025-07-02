import 'package:flutter/material.dart';
import 'package:justread/core/widgets/search.dart';
import 'package:justread/l10n/app_localizations.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: SearchBarWidget(),
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        child: SizedBox.expand(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(padding: EdgeInsets.all(10),
              child: Text(AppLocalizations.of(context)!.libraryPage, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            
          ),
        ),
      ),


    );
  }
}
