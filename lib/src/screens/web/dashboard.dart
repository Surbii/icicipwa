import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebDashboard extends StatefulWidget {
  const WebDashboard({Key? key}) : super(key: key);

  @override
  _WebDashboardState createState() => _WebDashboardState();
}

class _WebDashboardState extends State<WebDashboard> {
  dynamic widthSize = 0.0;
  bool isWeb = false;
  bool isTab = false;
  bool showDetails = false;
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
  Widget rightColumn(String name, String price, String stockType, String pl){
    return Container(
      padding: EdgeInsets.only(top: 5),
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffDCDCDC).withOpacity(0.5)
          ),
        ),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff353535)
                )),
                Text(price, style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff353535)
                )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(stockType, style: TextStyle(
                    fontSize: 10,
                    color: Color(0xff80878E)
                )),
                Text(pl, style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff5FC85F)
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget seeAll(String leadingIcon, String title, String trailingIcon, String pl, String currentValue, String returnValue, String investment){
    return  Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
        width: 414,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(leadingIcon),
                        SizedBox(width: 5),
                        Text(title, style: TextStyle(
                            color: Color(0xff353535),
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ))
                      ],
                    ),
                  ),
                  Image.asset(trailingIcon),
                ],
              ),
            ),
            Container(
              height: 38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Day's P/L", style: TextStyle(
                      color: Color(0xff80878E),
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  )),
                  Text(pl, style: TextStyle(
                      color: Color(0xffFE303C),
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ))
                ],
              ),
            ),
            Container(
              height: 38,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Current Value", style: TextStyle(
                          color: Color(0xff80878E),
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      )),
                      Text(currentValue, style: TextStyle(
                          color: Color(0xff353535),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                      ))
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("(Returns)", style: TextStyle(
                          color: Color(0xff80878E),
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      )),
                      Text(returnValue, style: TextStyle(
                          color: Color(0xff34C758),
                          fontSize: 12,
                          fontWeight: FontWeight.w500
                      ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Investment", style: TextStyle(
                      color: Color(0xff80878E),
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                  )),
                  Text(investment, style: TextStyle(
                      color: Color(0xff353535),
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget horizontalList(String iconName, String title, String open, String upcomming, {bool hide = false}){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        // height: 82,
        // width: 228,
          height: MediaQuery.of(context).size.height * 0.2,
          padding: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(iconName),
              SizedBox(width: 25),
              Flexible(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title, style: TextStyle(
                          color: Color(0xff353535),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                      )),
                      SizedBox(height: 10),
                      hide == false?Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/open.png"),
                                  SizedBox(width: 5),
                                  Text(open, style: TextStyle(
                                      color: Color(0xff80878E),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/upcomming.png"),
                                  SizedBox(width: 5),
                                  Text(upcomming, style: TextStyle(
                                      color: Color(0xff80878E),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ):Container()
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
  Widget oneClick(String title, String currentValue, String overallGain, String content, {bool hide = false}){
    return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      child: Container(
        height: widthSize < 1370?MediaQuery.of(context).size.height * 0.25:MediaQuery.of(context).size.height * 0.25,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30,),
              child: Text(title, style: TextStyle(
                color: Color(0xff353535),
                fontSize: 18,
                fontWeight: FontWeight.w500
              )),
            ),
            SizedBox(height: 15),
            hide == false?Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Current Value", style: TextStyle(
                            color: Color(0xff80878E),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          )),
                          SizedBox(height: 8),
                          Text(currentValue, style: TextStyle(
                            color: Color(0xff353535),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          )),
                        ]
                    ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Overall Gain", style: TextStyle(
                            color: Color(0xff80878E),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          )),
                          SizedBox(height: 8),
                          Text(overallGain, style: TextStyle(
                            color: Color(0xff34C758),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          )),
                        ]
                      ),
                    ),
                  )
                ]
              )
            ):Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text(content, style: TextStyle(
                  color: Color(0xff80878E),
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                )),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xffDCDCDC).withOpacity(0.9)
                  )
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(hide == false?"View Details":"View Recommended", style: TextStyle(
                      color: Color(0xff053D6E),
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    )
                  ),
                  Image.asset("assets/icons/arrow.png")
                ]
              )
            ),
         ]                                )
      )
    );
  }
  Widget freeBees(String title, String subTitle, String footer, String icon, Color color){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: widthSize<1290?MediaQuery.of(context).size.height * 0.25:MediaQuery.of(context).size.height * 0.25,
        padding: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: color
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Text(title, style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.w400
              )),
            ),
            SizedBox(height: 5),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(subTitle, style: TextStyle(
                            color: Color(0xff353535),
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ), softWrap: true),
                          SizedBox(height: 30),
                          Text(footer, style: TextStyle(
                              color: Color(0xff053D6E),
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(icon)
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
  Widget footer(String title, String content, String buttonName, String icon, Color color){
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: color
          ),
          color: Color(0xffEFF6FF)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(
                      color: color,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    )),
                    SizedBox(height: 20),
                    Text(content, style: TextStyle(
                      color: Color(0xff353535),
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    )),
                    SizedBox(height: 70),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: color,
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      child: Text(buttonName, style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      )),
                    )
                  ],
                ),
              ),
            ),
            Container(
              // height: 200,
              // width: 200,
              child: Image.asset(icon)
            )
          ],
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    widthSize = MediaQuery.of(context).size.width;
    print(widthSize);
    return Container(
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 40, right: 0),
            height: 64,
            color: const Color(0xFFF5F6F7),
            child: Row(
              children: [
                Container(
                  child: Image.asset("assets/icons/logo.png"),
                ),
                widthSize<1036?Container():Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/icons/nifty50.png"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: Image.asset("assets/icons/nifty_group.png"),
                      ),
                    ],
                  ),
                ),
                widthSize<1036?Container():Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/icons/nifty_point.png"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: Image.asset("assets/icons/nifty_pl.png"),
                      ),
                    ],
                  ),
                ),
                widthSize<1036?Container():Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/icons/sensex.png"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: Image.asset("assets/icons/sensex_group.png"),
                      ),
                    ],
                  ),
                ),
                widthSize<1036?Container():Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("assets/icons/sensex_point.png"),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 3),
                        child: Image.asset("assets/icons/sensex_pl.png"),
                      ),
                    ],
                  ),
                ),
                widthSize< 1383?Container(
                  padding: EdgeInsets.only(left: 150),
                  child: Image.asset("assets/icons/watchlistsearch.png"),
                ):Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset("assets/icons/search.png"),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset("assets/icons/help.png"),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset("assets/icons/community.png"),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset("assets/icons/notification.png"),
                ),
                Container(
                  padding: EdgeInsets.only(left: 60),
                  child: Image.asset("assets/icons/profile.png"),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widthSize<1107?Container():Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Color(0xffDCDCDC).withOpacity(0.5)
                      ),
                      bottom: BorderSide(
                        color: Color(0xffDCDCDC).withOpacity(0.5)
                      ),
                    ),
                    color: Colors.white,
                  ),
                  width: 170,
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
                      SizedBox(height: 15),
                      Container(
                        child: Image.asset("assets/icons/default_pro.png"),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset("assets/icons/darkmode.png"),
                                  SizedBox(width: 10),
                                  Text("Dark Mode", style: TextStyle(
                                      fontSize: 14
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xffF5F6F7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          height: 48,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xffDCDCDC).withOpacity(0.5)
                                )
                              ),
                              color: Color(0xffFFFFFF),
                            ),
                          // color: Color(0xffFFFFFF),
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset("assets/icons/sun.png")
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Market Open", style: TextStyle(
                                            color: Color(0xff353535),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400
                                          )),
                                          Text("1 Feb 202, 12:30pm IST", style: TextStyle(
                                            color: Color(0xff80878E),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500
                                          )),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Container(
                                          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE77817),
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Text("Portfolio", style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Flexible(
                                        child: Container(
                                          child: Text("Orders", style: TextStyle(
                                            color: Color(0xff353535),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Flexible(
                                        child: Container(
                                          child: Text("Positions", style: TextStyle(
                                            color: Color(0xff353535),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Flexible(
                                        child: Container(
                                          child: Text("Funds", style: TextStyle(
                                            color: Color(0xff353535),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Flexible(
                                        child: Container(
                                          child: Text("Research", style: TextStyle(
                                            color: Color(0xff353535),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                          )),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ),
                              Container(
                                child: Image.asset("assets/icons/star.png")
                              )
                            ],
                          )
                        ),
                        Container(
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color(0xffDCDCDC).withOpacity(0.5)
                              )
                            ),
                            color: Color(0xffFFFFFF),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text("u can use Share as Margin facility for trading in Margin Plus also. With Shares as Margin, you can treat limits from your existing stock holdings and capitalize market volatility", style: TextStyle(
                                    color: Color(0xff80878E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    wordSpacing: 1
                                  )),
                                ),
                              ),
                              Image.asset("assets/icons/pause.png")
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 2,
                                child: Container(
                                  padding: EdgeInsets.only(left: 0, right: 0, top: 30, bottom: 0),
                                  //height: 385,
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 40, right: 40),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Container(
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text("Current Value", style: TextStyle(
                                                                    color: Color(0xff80878E),
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400
                                                                )),
                                                                SizedBox(height: 5),
                                                                Text("₹ 76,269,442.44", style: TextStyle(
                                                                    color: Color(0xff353535),
                                                                    fontSize: 28,
                                                                    fontWeight: FontWeight.w500
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text("Total Investment", style: TextStyle(
                                                                    color: Color(0xff80878E),
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400
                                                                )),
                                                                SizedBox(height: 5),
                                                                Text("₹ 10,000,000.00", style: TextStyle(
                                                                    color: Color(0xff353535),
                                                                    fontSize: 22,
                                                                    fontWeight: FontWeight.w500
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text("Absolute Gain", style: TextStyle(
                                                                    color: Color(0xff80878E),
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w400
                                                                )),
                                                                SizedBox(height: 5),
                                                                Text("₹ 70,000,000.00", style: TextStyle(
                                                                    color: Color(0xff353535),
                                                                    fontSize: 22,
                                                                    fontWeight: FontWeight.w500
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 20),
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          InkWell(
                                                            onTap: (){
                                                              setState((){
                                                                showDetails = (showDetails == true?false:true);
                                                              });
                                                            },
                                                            child: Container(
                                                              child: Row(
                                                                children: [
                                                                  Text("Show Details", style: TextStyle(
                                                                    color: Color(0xff053D6E),
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w600
                                                                  )),
                                                                  SizedBox(width: 5),
                                                                  Image.asset("assets/icons/arrow.png")
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Row(
                                                              children: [
                                                                Image.asset("assets/icons/mf.png", color: Color(0xff053D6E),),
                                                                SizedBox(width: 5),
                                                                Text("Analyze", style: TextStyle(
                                                                  color: Color(0xff053D6E),
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w600
                                                                )),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 50),
                                            Container(
                                              child: Image.asset("assets/icons/smile.png", color: Color(0xff053D6E)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      showDetails == true?Container(
                                        padding: EdgeInsets.only(top: 25, bottom: 25, left: 40, right: 40),
                                        color: Color(0xffF5F6F7),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(child: seeAll("assets/icons/portfoliostocks.png", "Stocks", "assets/icons/arrow.png", "-174.65(0.96%)", "₹ 10,63,862.00", "(+8.96%)", "₹ 305,715.00")),
                                            SizedBox(width: 12),
                                            Expanded(child: seeAll("assets/icons/portfoliomf.png", "Stocks", "assets/icons/arrow.png", "-151.65(0.71%)", "₹ 10,00,336.00", "(+7.71%)", "₹ 295,425.00")),
                                          ],
                                        ),
                                      ):Container()
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: horizontalList("assets/icons/ipo.png", "IPO - Initial Public Offering", "2 Open", "3 Upcomming")),
                                    SizedBox(width: 10),
                                    Expanded(child: horizontalList("assets/icons/sgb.png", "SBG - Sovereign Gold Bond", "0 Open", "1 Upcomming")),
                                    widthSize<1411?Container():SizedBox(width: 10),
                                    widthSize<1411?Container():Expanded(child: horizontalList("assets/icons/etf_ext.png", "ETF - Exchange Traded Fund", "", "", hide: true)),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    widthSize<1411?Container():Expanded(child: oneClick("One Click Equity", "₹ 1,00,000", "₹ 50,000", "")),
                                    widthSize<1411?
                                    Container():SizedBox(width: 10),
                                    Expanded(child: oneClick("Premium Portfolio", "", "", "You don't have any premium\nportfolio yet.", hide: true)),
                                    SizedBox(width: 10),
                                    Expanded(child: oneClick("One Click Mutual Fund", "", "", "You don't have any One Click\nMutual Funds yet.", hide: true)),
                                  ]
                                )
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: freeBees("Free Hour - Margin Trade Plus", "From 2:30 PM to 3:30 PM", "Register For Free", "assets/icons/freeHour.png", Color(0xffBF5698))),
                                    SizedBox(width: 10),
                                    Expanded(child: freeBees("Buy Now - Pay Later", "Now in trading too!", "Pay Later with MTF", "assets/icons/buyTime.png", Color(0xffEB9923))),
                                    SizedBox(width: 10),
                                    Expanded(child: freeBees("Refer & Earn ₹500", "Refer to you friends", "Refer Now", "assets/icons/referNow.png", Color(0xff7B73BF))),
                                  ]
                                )
                              ),
                              SizedBox(height: 25),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: footer("Learn terms of investment & get investment ideas", "Explore the school of investment with ICICI & put your financial affair in order", "Start Learning", "assets/icons/success.png", Color(0xff053D6E))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                widthSize<1290?Container():Container(
                  padding: EdgeInsets.only(left: 11, right: 11),
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color(0xffDCDCDC).withOpacity(0.5)
                      ),
                      left: BorderSide(
                        color: Color(0xffDCDCDC).withOpacity(0.5)
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 65,
                        color: Color(0xffFFFFFF),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text("WATCHLIST 1", style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff353535)
                                  )),
                                  SizedBox(width: 5),
                                  Image.asset("assets/icons/watchlistdrop.png")
                                ],
                              ),
                            ),
                            Container(
                              child: Text("20/50", style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff80878E)
                              )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 42,
                        color: Color(0xFAFAFA),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/icons/watchlistsearch.png"),
                            Image.asset("assets/icons/watchlistfilter.png"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            rightColumn("USDINR 04 Feb 22 68.00 CE", "₹ 75.7300", "BSE", "42.60(6.06%)"),
                            rightColumn("Gold 25 MAR 22 51200.00 CE", "₹ 5134.00", "BSE", "21.40(3.10%)"),
                            rightColumn("BPCL", "₹ 376.05", "BSE", "3.90(0.94%)"),
                            rightColumn("CADILAHC", "₹ 397.50", "BSE", "0.80(0.20%)"),
                            rightColumn("CDSL", "₹ 1502.50", "BSE", "0.80(0.20%)"),
                            rightColumn("CIPLA", "₹ 899.10", "BSE", "7.40(0.83%)"),
                            rightColumn("DALMIASUG", "₹ 423.70", "BSE", "10.10(2.44%)"),
                            rightColumn("DMART", "₹ 4053.70", "BSE", "19.05(0.47%)"),
                            rightColumn("FEDERALBNK", "₹ 93.85", "BSE", "2.05(2.23)"),
                            rightColumn("HDFCBANK", "₹ 1461.25", "BSE", "26.10(1.75%)"),
                            rightColumn("ICICIBANK", "₹ 795.70", "BSE", "2.50(0.30%)"),
                            rightColumn("INFY", "₹ 1693.90", "BSE", "3.75(0.98%)"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
