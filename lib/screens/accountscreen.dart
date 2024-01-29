import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pocketguardianapp/screens/Balance.dart';
import 'package:pocketguardianapp/screens/addcard.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:pocketguardianapp/screens/coupons.dart';
import 'package:pocketguardianapp/screens/history.dart';
import 'package:pocketguardianapp/screens/loate.dart';

class Account extends StatefulWidget {
  int index;
  Account(this.index);
  @override
  State<Account> createState() => _AccountState();

  int getIndex() {
    return index;
  }
}

class _AccountState extends State<Account> {
  Map<String, double> dataMap = {
    "Transportation": 5,
    "Food": 3,
    "Bills": 2,
    "Health": 2,
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
            elevation: 20,
            showUnselectedLabels: true,
            currentIndex: widget.index,
            onTap: (index) {
              setState(() {
                widget.index = index;
              });
              switch (index) {
                case 0:
                  Navigator.pop(context);

                  break;

                default:
              }
            },
            selectedItemColor: Color(0xB73A1892),
            unselectedItemColor: Colors.grey,
            backgroundColor: Color.fromARGB(47, 0, 0, 0),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.payment,
                  ),
                  label: "pay"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "notifications"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  label: "account"),
            ]),
      ),
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(color: Colors.black, Icons.settings))
          ],
          leading: Image.asset(width: 62, 'assets/images/logo.png')),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'hey,',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                        fontSize: 14),
                  ),
                  Text(
                    'wajdi',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: GoogleFonts.arimaMadurai().fontFamily,
                    ),
                  )
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: size.width,
                  height: 130,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: ShapeDecoration(
                              color: Color(0xCC30D5C8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.money),
                              onPressed: () {
                                Get.to(() => Balance());
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text('Check Balance'))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: ShapeDecoration(
                              color: Color(0xCC30D5C8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.location_on),
                              onPressed: () {
                                Get.to(() => Locate());
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text('Locate Wallet'))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: ShapeDecoration(
                              color: Color(0xCC30D5C8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.discount),
                              onPressed: () {
                                Get.to(() => Coupons());
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 7),
                              child: Text('Coupons'))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: ShapeDecoration(
                              color: Color(0xCC30D5C8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.history),
                              onPressed: () {
                                Get.to(() => History());
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            child: Text('History'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 228,
                height: 43,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Add Card"),
                    IconButton(
                        onPressed: () {
                          Get.to(() => AddCard());
                        },
                        icon: Icon(Icons.add_card_outlined))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 228,
                height: 43,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Manage Cards"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.manage_accounts_outlined))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Monthly Spendings'),
              ),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: PieChart(
                  dataMap: dataMap,
                  animationDuration: Duration(milliseconds: 800),
                  chartLegendSpacing: 32,
                  chartRadius: MediaQuery.of(context).size.width / 3.2,
                  initialAngleInDegree: 0,
                  chartType: ChartType.ring,
                  ringStrokeWidth: 32,
                  centerText: "Spendings",
                  legendOptions: LegendOptions(
                    showLegendsInRow: false,
                    legendPosition: LegendPosition.right,
                    showLegends: true,
                    legendTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValueBackground: true,
                    showChartValues: true,
                    showChartValuesInPercentage: false,
                    showChartValuesOutside: false,
                    decimalPlaces: 1,
                  ),
                  // gradientList: ---To add gradient colors---
                  // emptyColorGradient: ---Empty Color gradient---
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
