import 'package:divar_application/screens/map_advertize_screen.dart';
import 'package:divar_application/widgets/horizontal_seperator.dart';
import 'package:divar_application/widgets/linear_progressbar.dart';
import 'package:flutter/material.dart';

class RegisterAdvertiseScreen extends StatefulWidget {
  const RegisterAdvertiseScreen({super.key});

  @override
  State<RegisterAdvertiseScreen> createState() =>
      _RegisterAdvertiseScreenState();
}

class _RegisterAdvertiseScreenState extends State<RegisterAdvertiseScreen> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;

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
            Image.asset('assets/images/register.png'),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: LinearProgressBarWidget(3),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب دسته بندی آویز',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/category-2.png'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  right: 16,
                  left: 105,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'محدوده ملک',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'دسته بندی',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey[200]!,
                        ),
                        color: Color(0xffF9FAFB),
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'خیابان صیاد شیرازی',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffD0D5DD),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey[200]!,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('assets/images/arrow-down.png'),
                            Spacer(),
                            Text(
                              'فروش آپارتمان',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: HorizontalSeperator(),
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: 16,
              //     right: 16,
              //     bottom: 30,
              //   ),
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       width: 1,
              //       color: Colors.grey[200]!,
              //     ),
              //     color: Color(0xffF9FAFB),
              //     borderRadius: BorderRadius.circular(
              //       1,
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'ویژگی‌ ها',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/clipboard.png'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                  left: 122,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'تعداد اتاق',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'متراژ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey[200]!,
                        ),
                        color: Color(0xffF9FAFB),
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Polygon 1.png'),
                                  Spacer(),
                                  Image.asset('assets/images/Polygon 2.png'),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '6',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffD0D5DD),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey[200]!,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Polygon 1.png'),
                                  Spacer(),
                                  Image.asset('assets/images/Polygon 2.png'),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '350',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                  left: 122,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'سال ساخت',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'طبقه',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                  right: 16,
                  left: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey[200]!,
                        ),
                        color: Color(0xffF9FAFB),
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Polygon 1.png'),
                                  Spacer(),
                                  Image.asset('assets/images/Polygon 2.png'),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '1402',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffD0D5DD),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 48,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey[200]!,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Polygon 1.png'),
                                  Spacer(),
                                  Image.asset('assets/images/Polygon 2.png'),
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 30,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey[200]!,
                  ),
                  color: Color(0xffF9FAFB),
                  borderRadius: BorderRadius.circular(
                    1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'امکانات',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/magicpen.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 16,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey[200]!,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Switch(
                            activeColor: Colors.red,
                            value: switchValue1,
                            onChanged: (value) {
                              setState(() {
                                switchValue1 = value;
                              });
                            },
                          ),
                          Spacer(),
                          Text(
                            'آسانسور',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 16,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey[200]!,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Switch(
                            activeColor: Colors.red,
                            value: switchValue2,
                            onChanged: (value) {
                              setState(() {
                                switchValue2 = value;
                              });
                            },
                          ),
                          Spacer(),
                          Text(
                            'پارکینگ',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 16,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey[200]!,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Switch(
                            activeColor: Colors.red,
                            value: switchValue3,
                            onChanged: (value) {
                              setState(() {
                                switchValue3 = value;
                              });
                            },
                          ),
                          Spacer(),
                          Text(
                            'انباری',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                child: GestureDetector(
                  onTap: () {
                    _navigateToDetailScreen(
                      context,
                    );
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        'بعدی',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDetailScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MapAdvertizeScreen(),
      ),
    );
  }
}
