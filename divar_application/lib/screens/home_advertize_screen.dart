import 'package:flutter/material.dart';

class HomeAdvertiseScreen extends StatefulWidget {
  const HomeAdvertiseScreen({super.key});
  static const routename = 'home_advertize';
  @override
  State<HomeAdvertiseScreen> createState() => _HomeAdvertiseScreenState();
}

class _HomeAdvertiseScreenState extends State<HomeAdvertiseScreen> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/images/aviz.png'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 50,
                ),
                child: Row(
                  children: [
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD0D5DD),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'آویزهای داغ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff101828),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: HorizontalAdvertizeList(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 40,
                ),
                child: Row(
                  children: [
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD0D5DD),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'آویزهای اخیر',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff101828),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                top: 20,
                right: 8,
                left: 8,
                bottom: 20,
              ),
              sliver: VerticalAdvertizeList(),
            ),
          ],
        ),
      ),
    );
  }
}

class VerticalAdvertizeList extends StatelessWidget {
  const VerticalAdvertizeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return SizedBox(
            height: 170,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Image.asset('assets/images/home.png'),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'واحد دوبلکس فول امکانات',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff101828),
                              ),
                            ),
                            Text(
                              'سال ساخت 1398، سند تک برگ، دوبلکس تجهیزات کامل',
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '25,683,000,000',
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                Spacer(),
                                Text(':قیمت'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        childCount: 5,
      ),
    );
  }
}

class HorizontalAdvertizeList extends StatelessWidget {
  const HorizontalAdvertizeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        padding: const EdgeInsets.only(
          top: 48,
          right: 8,
          left: 8,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 315,
            width: 224,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/vila.png'),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        'ویلا 500 متری زیر  قیمت',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff101828),
                        ),
                      ),
                    ),
                    const Text(
                      'ویوعالی، سند تک برگ، سال ساخت 1402، تحویل فوری',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Text(
                          '25,683,000,000',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Spacer(),
                        Text(':قیمت'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
