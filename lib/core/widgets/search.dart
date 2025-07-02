import 'package:flutter/material.dart';
import 'package:justread/l10n/app_localizations.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {

    // Search bar (UI only - non-functional)
    return AppBar(
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.primary,

      title: IntrinsicWidth(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.search, size: 20),
                  SizedBox(width: 4),
                  Text(AppLocalizations.of(context)!.search, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: 250,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );


  }
}
