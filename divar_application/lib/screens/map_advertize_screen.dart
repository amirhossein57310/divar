import 'package:divar_application/screens/picture_advertize_screen.dart';
import 'package:divar_application/widgets/linear_progressbar.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class MapAdvertizeScreen extends StatefulWidget {
  const MapAdvertizeScreen({super.key});

  @override
  State<MapAdvertizeScreen> createState() => _MapAdvertizeScreenState();
}

class _MapAdvertizeScreenState extends State<MapAdvertizeScreen> {
  bool switchValue2 = false;

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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: LinearProgressBarWidget(4),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'موقعیت مکانی',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/images/map.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset('assets/images/map-text.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 16,
                right: 16,
                bottom: 20,
              ),
              child: SizedBox(
                width: 380,
                child: Image.asset(
                  'assets/images/google.png',
                  fit: BoxFit.cover,
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
                          'موقعیت دقیق نقشه نمایش داده شود؟',
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PictureAdvertizeScreen(),
                    ),
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
    );
  }
}
