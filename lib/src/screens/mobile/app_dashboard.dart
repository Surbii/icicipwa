import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import '../web/web_dashboard.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({Key? key}) : super(key: key);

  @override
  AppDashboardState createState() => AppDashboardState();
}

class AppDashboardState extends State<AppDashboard> {
  int _selectedIndex = 0;
  Widget leftColumn(String leading, String title){
    return Container(
      padding: EdgeInsets.only(left: 15, right: 8),
      height: 48,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Color(0xffDCDCDC).withOpacity(0.5)
            )
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(leading),
                SizedBox(width: 10),
                Text(title, style: TextStyle(
                    fontSize: 13
                )),
              ],
            ),
          ),
          Container(
            child :Image.asset("assets/icons/arrow.png"),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: black),
          toolbarHeight: 64,
          elevation: 0,
          backgroundColor: Color(0xFFF5F6F7),
          title: Image.asset("assets/icons/logo.png"),
          actions: [
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/help.png")),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/community.png")),
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/notification.png"))
          ],
        ),
        drawer: Drawer(
          child: Column(
              children: [
                leftColumn("assets/icons/stocks.png", "Stocks"),
                leftColumn("assets/icons/fo.png", "F&O"),
                leftColumn("assets/icons/mf.png", "Mutual Funds"),
                leftColumn("assets/icons/commodity.png", "Commodity"),
                leftColumn("assets/icons/currency.png", "Currency"),
                leftColumn("assets/icons/fixedincome.png", "Fixed Income"),
                leftColumn("assets/icons/etf.png", "ETF"),
                leftColumn("assets/icons/insurance.png", "Insurance"),
                leftColumn("assets/icons/nps.png", "NPS"),
                leftColumn("assets/icons/globalinvest.png", "Global Invest"),
                leftColumn("assets/icons/statements.png", "Statements"),
                leftColumn("assets/icons/moreproduct.png", "More Products"),
             ]
           ),
        ),
        body: portfolioScreen(),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomBarItems(),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: primary,
          selectedIconTheme: const IconThemeData(color: Colors.blue),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
        ));
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
              ? "assets/icons/portfolio.png"
              : i == 1
              ? "assets/icons/watchlist.png"
              : i == 2
              ? "assets/icons/bottomsearch.png"
              : i == 3
              ? "assets/icons/research.png"
              : "assets/icons/order.png",
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

  portfolioScreen() {
    return SingleChildScrollView(
        child: Column(children: [
          ListView(
            padding: const EdgeInsets.all(15),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(
                        "Current Value",
                        style: TextStyle(color: grey),
                      ),
                      subtitle: Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Text("₹ 76,269,442.44",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: black))),
                      trailing: TextButton.icon(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/mf.png"),
                        label: Text(
                          "Analyse",
                          style: TextStyle(
                              color: darkBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total Investment',
                                    style: TextStyle(color: grey)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("₹ 10,000,000.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: black))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: 'Absolute Gain ',
                                      style: TextStyle(color: grey)),
                                  const TextSpan(
                                      text: '(+8.96%)',
                                      style: TextStyle(color: Colors.greenAccent))
                                ])),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("₹ 70,000,000.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: black))
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Show Details"),
                            Icon(Icons.arrow_drop_down_sharp)
                          ],
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                height: 85,
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: getList(),
                ),
              ),
              Card(
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "One Click Equity",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Current Value',
                                        style: TextStyle(color: grey)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text("₹ 10,000,000.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            color: black))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Overall Gain ',
                                        style: TextStyle(color: grey)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text("₹ 50,000.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            color: Colors.lightGreen)),
                                  ],
                                ),
                              ],
                            ),
                          ])),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    title: Text(
                      "View Details",
                      style:
                      TextStyle(color: darkBlue, fontWeight: FontWeight.w500),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    ),
                  )
                ]),
              ),
              getCard(
                  "Premium Portfolio",
                  "You don’t have any premium portfolios yet.",
                  "View Recommended Portfolios",
                  "assets/icons/doll.png"),
              getCard(
                  "One Click Mutual Funds",
                  "You don’t have any One Click Mutual Funds yet.",
                  "View Recommended",
                  null),
            ],
          )
        ]));
  }

  getList() {
    return List.generate(
        2,
            (i) => Container(
          margin: const EdgeInsets.only(right: 15),
          width: MediaQuery.of(context).size.width * .8,
          child: Card(
              child: ListTile(
                leading: Image.asset("assets/icons/ipo.png"),
                tileColor: white,
                title: Text("IPO - Initial Public Offering"),
                subtitle: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/open.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("2 Open")
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/icons/upcomming.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text("3 Upcoming")
                          ],
                        ),
                      ],
                    )),
              )),
        ));
  }

  getCard(title, subtitle, viewText, image) {
    return Card(
      margin: const EdgeInsets.only(top: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                title: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.w500),
                ),
                trailing: image != null ? Image.asset(image) : SizedBox(),
                contentPadding: EdgeInsets.zero,
              ),
              Text(
                subtitle,
                style: TextStyle(color: grey, fontSize: 18),
              )
            ])),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          height: 1,
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 15),
          title: Text(
            viewText,
            style: TextStyle(color: darkBlue, fontWeight: FontWeight.w500),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
          ),
        )
      ]),
    );
  }
}