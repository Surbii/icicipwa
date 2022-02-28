import 'package:flutter/material.dart';
import 'package:icicipwa/src/screens/mobile/app_dashboard.dart';
import 'package:icicipwa/src/screens/mobile/colors.dart';
import 'package:icicipwa/src/screens/web/web_dashboard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  dynamic widthSize = 0.0;
  bool isWeb = false;
  @override
  Widget build(BuildContext context) {
    widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: widthSize<720?Colors.grey.shade50:Colors.transparent,
      // drawer: widthSize < 720?const Drawer():null,
      // appBar: widthSize < 720?AppBar(
      //   title: Image.asset("images/logo.png"),
      //   actions: [
      //     IconButton(
      //         onPressed: () {}, icon: Image.asset("images/Group (3).png")),
      //     IconButton(
      //         onPressed: () {}, icon: Image.asset("images/community.png")),
      //     IconButton(
      //         onPressed: () {}, icon: Image.asset("images/notification.png"))
      //   ],
      // ):null,
      body: widthSize<720?AppDashboard():WebDashboard(),
      // bottomNavigationBar: widthSize<720?BottomNavigationBar(
      //   items: bottomBarItems(),
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   backgroundColor: primary,
      //   selectedIconTheme: const IconThemeData(color: Colors.blue),
      //   unselectedIconTheme: const IconThemeData(color: Colors.white),
      // ):Container()
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bottomBarItems() {
    return List.generate(
      5,
          (i) => BottomNavigationBarItem(
        icon: Image.asset(
          i == 0
              ? "images/portfolio.png"
              : i == 1
              ? "images/Bottom bar (3).png"
              : i == 2
              ? "images/Search (Normal).png"
              : i == 3
              ? "images/Bottom bar (4).png"
              : "images/Bottom bar (5).png",
        ),
        title: Text(
          i == 0
              ? 'Portfolio'
              : i == 1
              ? 'Watchlist'
              : i == 2
              ? "Search"
              : i == 3
              ? "Research"
              : "My Orders",
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
