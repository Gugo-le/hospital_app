import 'package:flutter/material.dart';

class InfoDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  InfoDetail({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Details',
            style: TextStyle(
                fontFamily: 'DoHyeon',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon:
                const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        const SizedBox(height: 15.0),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text('Types Of Medicine',
              style: TextStyle(
                  fontFamily: 'DoHyeon',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        const SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 180.0, width: 100.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),
        Center(
          child: Text(cookieprice,
              style: const TextStyle(
                  fontFamily: 'DoHyeon',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        const SizedBox(height: 10.0),
        Center(
          child: Text(cookiename,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'DoHyeon',
                  fontSize: 24.0)),
        ),
        const SizedBox(height: 40.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 20.0,
            child: const Text(
                '진해거담제는 호흡기도의 분비물인 가래를 제거하고 기침을 진정시켜주므로 기침약으로 흔히 사용됩니다.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'DoHyeon',
                    fontSize: 20.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        const SizedBox(height: 180.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 100.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFFF17532)),
                child: const Center(
                    child: Text(
                  '콜록콜록',
                  style: TextStyle(
                      fontFamily: 'DoHyeon',
                      fontSize: 20.0,
                      color: Colors.white),
                ))))
      ]),
    );
  }
}
