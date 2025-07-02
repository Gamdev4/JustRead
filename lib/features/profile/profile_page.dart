import 'package:flutter/material.dart';
import 'package:justread/core/theme/theme_provider.dart';
import 'package:justread/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Padding(padding: EdgeInsets.all(35)),
          Row(
            children: [
              Icon(Icons.person, size: 80),
              SizedBox(width: 10),
              Text(AppLocalizations.of(context)!.signIn, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),

          // idk
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 150,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15)
              ),
          ),

          // Settings
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            height: 450,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15)
              ),
            child: Padding(padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.language, size: 24),
                          SizedBox(width: 8),
                          Text(AppLocalizations.of(context)!.language, style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  color: Theme.of(context).colorScheme.secondary,
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(AppLocalizations.of(context)!.selectLanguage, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                      SizedBox(height: 10),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.onSecondary,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        constraints: BoxConstraints(
                                          maxHeight: MediaQuery.of(context).size.height * 0.35,
                                        ),
                                        child: ListView(
                                          padding: EdgeInsets.all(20),
                                          children: [
                                            Text("English", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("Español", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("中文", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("Français", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("Deutsch", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("Português", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("日本語", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                            Text("한국어", style: TextStyle(fontSize: 16)),
                                            Divider(color: Theme.of(context).colorScheme.onTertiary, thickness: 1, height: 30),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 18),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              child: Container(
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context).colorScheme.primary,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                  child: Text(AppLocalizations.of(context)!.cancel, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                              child: Container(
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Theme.of(context).colorScheme.primary,
                                                  borderRadius: BorderRadius.circular(15),
                                                ),
                                                child: Center(
                                                  child: Text(AppLocalizations.of(context)!.submit, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                                ),
                                              ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                );
                              },
                            );
                          },
                          child: Text("English", style: TextStyle(fontSize: 14),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.dark_mode_outlined, size: 24),
                          SizedBox(width: 8),
                          Text(AppLocalizations.of(context)!.darkMode, style: TextStyle(fontSize: 16)),
                        ],
                      ),

                      Switch(
                        value: Provider.of<ThemeProvider>(context).isDarkMode,
                        onChanged: (value) {
                          Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                        },
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
                      ),
                    ],
                  ),
                  SizedBox(height: 18),

                  Row(children: [Icon(Icons.text_fields), SizedBox(width: 8), Text(AppLocalizations.of(context)!.letterSize, style: TextStyle(fontSize: 16))]),
                  SizedBox(height: 28),

                  Row(children: [Icon(Icons.font_download), SizedBox(width: 8), Text(AppLocalizations.of(context)!.textFont, style: TextStyle(fontSize: 16))]),


                ],
              ),
            ),
          ),
          
        ],
      ),


    );
  }
}
