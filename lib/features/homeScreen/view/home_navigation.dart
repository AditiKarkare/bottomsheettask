import 'package:fe_test/features/homeScreen/controller/homeScreen_controller.dart';
import 'package:fe_test/features/vehicles/view/page/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeNavigationPage extends StatelessWidget {
  const HomeNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenController>(builder: (context, homeCont, child) {
      return Scaffold(
        body: PageView(
          controller: homeCont.controller,
          children: [
            DashboardPage(),
            DashboardPage(),
            DashboardPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: homeCont.currentIndex,
            onTap: (value) {
              homeCont.updateController(value);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: ""),
            ]),
      );
    });
  }
}
