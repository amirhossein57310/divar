import 'package:divar_application/screens/advertize_category_screen.dart';
import 'package:divar_application/screens/home_advertize_screen.dart';
import 'package:divar_application/screens/login_screen.dart';
import 'package:divar_application/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatefulWidget {
  const CustomBottomNavigator({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigatorState createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavigator> {
  int bottomNavigatorBarItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigatorBarItemIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            bottomNavigatorBarItemIndex = value;
          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            label: 'آویر من',
            icon: Image.asset('assets/images/profile-circle.png'),
            activeIcon: Image.asset('assets/images/profile-circle-red.png'),
          ),
          BottomNavigationBarItem(
            label: 'افزودن آویز',
            icon: Image.asset('assets/images/add-circle.png'),
            activeIcon: Image.asset('assets/images/add-circle-red.png'),
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
            label: 'آویز آگهی ها',
            icon: Image.asset('assets/images/tag-grey.png'),
            activeIcon: Image.asset('assets/images/tag.png'),
          ),
        ],
      ),
      body: getScreens()[bottomNavigatorBarItemIndex],
    );
  }

  List<Widget> getScreens() {
    return <Widget>[
      ProfileScreen(),
      AdvertizeCategoryScreen(),
      LoginScreen(),
      HomeAdvertiseScreen(),
    ];
  }
}
