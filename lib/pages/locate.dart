import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hospital/helpers/appcolors.dart';
import 'package:hospital/helpers/utils.dart';
import 'package:hospital/models/category.dart';
import 'package:hospital/models/categorycard.dart';
import 'package:hospital/pages/home.dart';

import 'locpages/Hos10Page.dart';
import 'locpages/Hos1page.dart';
import 'locpages/Hos2page.dart';
import 'locpages/Hos3page.dart';
import 'locpages/Hos4page.dart';
import 'locpages/Hos5Page.dart';
import 'locpages/Hos6Page.dart';
import 'locpages/Hos7Page.dart';
import 'locpages/Hos8Page.dart';
import 'locpages/Hos9Page.dart';

class LocatePage extends StatelessWidget {
  final List<Widget> locpages = [
    const Hos1Page(),
    const Hos2Page(),
    const Hos3Page(),
    const Hos4Page(),
    const Hos5Page(),
    const Hos6Page(),
    const Hos7Page(),
    const Hos8Page(),
    const Hos9Page(),
    const Hos10Page(),
    // 여기에 추가적인 페이지를 추가할 수 있습니다.
  ];

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/drug.png',
          width: 60,
          height: 60,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.MAIN_COLOR),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const StartPage()));
          },
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset("assets/img/6301.jpg"),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return GestureDetector(
                    onTap: () {
                      // 해당 카테고리 카드를 눌렀을 때 해당 페이지로 이동
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => locpages[index],
                        ),
                      );
                    },
                    child: CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => locpages[index],
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
