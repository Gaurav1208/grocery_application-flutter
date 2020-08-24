import 'package:flutter/material.dart';
import 'package:grocery_application/bottom_bar.dart';

import 'fruits_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State with SingleTickerProviderStateMixin {
  TabController _tabController;

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
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Color(0xFF545d68),
          onPressed: () {},
        ),
        title: Text('Welcome',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545d68))),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545d68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: [
          SizedBox(height: 15.0),
          Text('Categories',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFCDCDCD),
            tabs: [
              Tab(
                child: Text('Fruits',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Vegitables',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Bikes',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
            ],
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                FruitPage(),
                FruitPage(),
                FruitPage(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
