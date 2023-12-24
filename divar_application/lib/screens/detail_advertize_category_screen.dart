import 'package:divar_application/screens/register_advertise_screen.dart';

import 'package:divar_application/widgets/linear_progressbar.dart';
import 'package:divar_application/widgets/vertical_category_container.dart';
import 'package:flutter/material.dart';

class DetailAdvertizeCategoryScreen extends StatelessWidget {
  const DetailAdvertizeCategoryScreen(this.itemName, {super.key});
  final String itemName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Image.asset('assets/images/close-square.png'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Image.asset('assets/images/categoty.png'),
            GestureDetector(
              child: Image.asset('assets/images/arrow-right.png'),
              onTap: () {
                // Handle the arrow-right button tap if needed
              },
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
              child: LinearProgressBarWidget(2),
            ),
            // Dynamically generate VerticalCategoryContainer widgets based on the categories list
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RegisterAdvertiseScreen(),
                  ),
                );
              },
              child: VerticalCategoryContainer('$itemName'),
            ),
            GestureDetector(
              child: VerticalCategoryContainer('$itemName'),
            ),
            GestureDetector(
              child: VerticalCategoryContainer('$itemName'),
            ),
          ],
        ),
      ),
    );
  }
}
