import 'package:flutter/material.dart';
import 'package:hospital/helpers/appcolors.dart';
import 'package:hospital/pages/pillpage.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.MAIN_COLOR),
          onPressed: () {},
        ),
        title: const Text(
          'Pill',
          style: TextStyle(
              fontFamily: "DoHyeon", fontSize: 15.0, color: Color(0xFF545D68)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFf545D68),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 15.0),
        children: <Widget>[
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            'Categories',
            style: TextStyle(fontFamily: 'DoHyeon', fontSize: 42.0),
          ),
          const SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicator: const BoxDecoration(color: Colors.transparent),
            labelColor: const Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: const EdgeInsets.only(left: 15.0, right: 15.0),
            unselectedLabelColor: const Color(0xFFCDCDCD),
            tabs: const [
              Tab(
                child: Text(
                  '기침/가래',
                  style: TextStyle(
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '콧물',
                  style: TextStyle(
                    fontSize: 21.0,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '발열',
                  style: TextStyle(
                    fontSize: 21.0,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                PillPage(),
                PillPage(),
                PillPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
