import 'package:flutter/material.dart';
import 'package:hospital/pages/infodetail.dart';

class PillPage extends StatelessWidget {
  const PillPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard(
                  '기침약(진해제)',
                  '\기침',
                  'assets/img/drug.png',
                  false,
                  true,
                  false,
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  '가래약(거담제)',
                  '\가래',
                  'assets/img/drug.png',
                  true,
                  false,
                  false,
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  '항히스타민제',
                  '\콧물, 코막힘, 재채기',
                  'assets/img/drug.png',
                  true,
                  true,
                  true,
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  '해열진통제',
                  '\고열',
                  'assets/img/drug.png',
                  true,
                  true,
                  false,
                  true,
                  false,
                  context,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    String name,
    String price,
    String imgPath,
    bool added,
    bool pilled,
    bool nose,
    bool fever,
    bool isFavorite,
    BuildContext context,
  ) {
    final heroTag = imgPath + name; // 고유 식별자를 태그에 추가

    return Padding(
      padding:
          const EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => InfoDetail(
                  assetPath: imgPath, cookieprice: price, cookiename: name)));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    isFavorite
                        ? const Icon(Icons.favorite, color: Color(0xFFEF7532))
                        : const Icon(Icons.favorite_border,
                            color: Color(0xFFEF7532)),
                  ],
                ),
              ),
              Hero(
                tag: heroTag, // 고유한 heroTag를 사용합니다.
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Color(0xFFCC8053),
                  fontFamily: 'DoHyeon',
                  fontSize: 14.0,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'DoHyeon',
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xFFEBEBEB),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      const Text(
                        '덱스트로메토르판, 노스카핀',
                        style: TextStyle(
                          fontFamily: 'DoHyeon',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                    if (!pilled) ...[
                      const Text(
                        '구아이페네신, 염화리소짐',
                        style: TextStyle(
                          fontFamily: 'DoHyeon',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                    if (nose) ...[
                      const Text(
                        '수도에페드린, 페닐레프린',
                        style: TextStyle(
                          fontFamily: 'DoHyeon',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                    if (fever) ...[
                      const Text(
                        '아세트아미노펜, 이부프로펜',
                        style: TextStyle(
                          fontFamily: 'DoHyeon',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
