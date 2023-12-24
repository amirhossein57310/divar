import 'package:divar_application/screens/detail_advertize_category_screen.dart';

import 'package:divar_application/widgets/linear_progressbar.dart';
import 'package:divar_application/widgets/vertical_category_container.dart';
import 'package:flutter/material.dart';

class AdvertizeCategoryScreen extends StatefulWidget {
  const AdvertizeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<AdvertizeCategoryScreen> createState() =>
      _AdvertizeCategoryScreenState();
}

class _AdvertizeCategoryScreenState extends State<AdvertizeCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Image.asset('assets/images/close-square.png'),
              onTap: () {},
            ),
            Image.asset('assets/images/categoty.png'),
            GestureDetector(
              child: Image.asset('assets/images/arrow-right.png'),
              onTap: () {},
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: LinearProgressBarWidget(1),
            ),
            GestureDetector(
              onTap: () {
                _navigateToDetailScreen(context, 'اجاره مسکونی');
              },
              child: VerticalCategoryContainer('اجاره مسکونی'),
            ),
            GestureDetector(
              onTap: () {
                _navigateToDetailScreen(context, 'فروش مسکونی');
              },
              child: VerticalCategoryContainer('فروش مسکونی'),
            ),
            // Add more GestureDetector containers as needed
          ],
        ),
      ),
    );
  }

  void _navigateToDetailScreen(BuildContext context, String itemName) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailAdvertizeCategoryScreen(itemName),
      ),
    );
  }
}
