import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:justread/features/home/home_page.dart';
import 'package:justread/features/library/library_page.dart';
import 'package:justread/features/write/write_page.dart';
import 'package:justread/features/profile/profile_page.dart';
import 'package:justread/l10n/app_localizations.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomePage(), const LibraryPage(), const WritePage(), const ProfilePage()];
}

class NavBar  extends StatelessWidget {
  const NavBar ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: Theme.of(context).colorScheme.secondary,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home, color: Theme.of(context).colorScheme.onTertiary,), label: AppLocalizations.of(context)!.homePage, selectedIcon: Icon(Icons.home, color: Theme.of(context).colorScheme.onPrimary)),
            NavigationDestination(icon: Icon(Icons.book, color: Theme.of(context).colorScheme.onTertiary), label: AppLocalizations.of(context)!.libraryPage, selectedIcon: Icon(Icons.book, color: Theme.of(context).colorScheme.onPrimary)),
            NavigationDestination(icon: Icon(Icons.pages, color: Theme.of(context).colorScheme.onTertiary), label: AppLocalizations.of(context)!.writePage, selectedIcon: Icon(Icons.pages, color: Theme.of(context).colorScheme.onPrimary)),
            NavigationDestination(icon: Icon(Icons.person_outline, color: Theme.of(context).colorScheme.onTertiary), label: AppLocalizations.of(context)!.profilePage, selectedIcon: Icon(Icons.person_outline, color: Theme.of(context).colorScheme.onPrimary)),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );

  }
}
