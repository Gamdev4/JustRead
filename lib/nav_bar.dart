import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:justread/features/home/home_page.dart';
import 'package:justread/features/library/library_page.dart';
import 'package:justread/features/write/write_page.dart';
import 'package:justread/features/profile/profile_page.dart';

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
          destinations: [
            NavigationDestination(icon: Icon(Icons.home, color: Theme.of(context).colorScheme.onSecondary), label: "Home", selectedIcon: Icon(Icons.home, color: Theme.of(context).colorScheme.onPrimary)),
            NavigationDestination(icon: Icon(Icons.book, color: Theme.of(context).colorScheme.onSecondary), label: "Library", selectedIcon: Icon(Icons.book, color: Theme.of(context).colorScheme.onPrimary)),
            NavigationDestination(icon: Icon(Icons.pages, color: Theme.of(context).colorScheme.onSecondary), label: "Write", selectedIcon: Icon(Icons.pages, color: Theme.of(context).colorScheme.onPrimary)),
            NavigationDestination(icon: Icon(Icons.person_outline, color: Theme.of(context).colorScheme.onSecondary), label: "Profile", selectedIcon: Icon(Icons.person_outline, color: Theme.of(context).colorScheme.onPrimary)),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );

  }
}
