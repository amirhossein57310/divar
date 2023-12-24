import 'package:custom_top_navigator/custom_scaffold.dart';
import 'package:divar_application/screens/advertize_category_screen.dart';
import 'package:divar_application/screens/home_advertize_screen.dart';
import 'package:divar_application/screens/login_screen.dart';
import 'package:divar_application/screens/profile_screen.dart';
import 'package:divar_application/screens/register_advertise_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int bottomNavigatorBarItemIndex = 3; // Set a default value
  @override
  void initState() {
    super.initState();
    print("initState called");
    bottomNavigatorBarItemIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      onItemTap: (value) {
        setState(() {
          bottomNavigatorBarItemIndex = value;
        });
      },
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              label: 'آویز آگهی ها',
              icon: Image.asset('assets/images/tag-grey.png'),
              activeIcon: Image.asset('assets/images/tag.png'),
            ),
            BottomNavigationBarItem(
              label: 'جستجو',
              icon: Image.asset('assets/images/search-normal.png'),
              activeIcon: const Icon(
                Icons.search_rounded,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              label: 'افزودن آویز',
              icon: Image.asset('assets/images/add-circle.png'),
              activeIcon: Image.asset('assets/images/add-circle-red.png'),
            ),
            BottomNavigationBarItem(
              label: 'آویر من',
              icon: Image.asset('assets/images/profile-circle.png'),
              activeIcon: Image.asset('assets/images/profile-circle-red.png'),
            ),
          ],
        ),
      ),
      children: getScreens(),
    );
  }

  List<Widget> getScreens() {
    return <Widget>[
      HomeAdvertiseScreen(),
      LoginScreen(),
      AdvertizeCategoryScreen(),
      ProfileScreen(),
    ];
  }
}
