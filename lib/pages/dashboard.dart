import 'package:delivery_on_wheels/pages/components/custom_table_widget.dart';
import 'package:delivery_on_wheels/pages/components/navbar.dart';
import 'package:flutter/material.dart';

String truncateWithEllipsis(int cutoff, String myString) {
  return (myString.length <= cutoff)
      ? myString
      : '${myString.substring(0, cutoff)}...';
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  int selected = 0;
  int navSelected = 0;
  Widget build(BuildContext context) {
    List myTripsArr = [
      {
        "id": 21,
        "from": "Raipur",
        "to": "Jashpur",
        "startDate": "3 August, 2023",
        "endDate": "4 August, 2023",
      },
      {
        "id": 22,
        "from": "Bilaspur",
        "to": "Jashpur",
        "startDate": "10 August, 2023",
        "endDate": "11 August, 2023",
      },
      {
        "id": 23,
        "from": "Raigar",
        "to": "Jashpur",
        "startDate": "15 August, 2023",
        "endDate": "16 August, 2023",
      },
      {
        "id": 24,
        "from": "Raipur",
        "to": "Bilaspur",
        "startDate": "1 August, 2023",
        "endDate": "2 August, 2023",
      },
    ];
    double dW = MediaQuery.of(context).size.width;
    double dH = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Navbar
            CustomNavbarWidget(dW: dW, navSelected: navSelected),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: dW > 500
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Wrap(
                        // maxCrossAxisExtent: 520,
                        // crossAxisSpacing: 10,
                        // mainAxisSpacing: 5,
                        spacing: 8.0, // gap between adjacent chips
                        runSpacing: 8.0,
                        alignment: dW > 500
                            ? WrapAlignment.spaceEvenly
                            : WrapAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selected = 0;
                              });
                            },
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: selected == 0
                                    ? const Color(0xff5d67ea)
                                    : Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Trips",
                                    style: TextStyle(
                                      color: selected == 0
                                          ? Colors.white
                                          : const Color(0xff5d67ea),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      color: selected == 0
                                          ? Colors.white
                                          : const Color(0xff5d67ea),
                                      fontSize: 48,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: selected == 1
                                    ? const Color(0xff5d67ea)
                                    : Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Trip Orders",
                                    style: TextStyle(
                                      color: selected == 1
                                          ? Colors.white
                                          : const Color(0xff5d67ea),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                      color: selected == 1
                                          ? Colors.white
                                          : const Color(0xff5d67ea),
                                      fontSize: 48,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selected = 2;
                              });
                            },
                            child: Container(
                              width: 150,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: selected == 2
                                    ? const Color(0xff5d67ea)
                                    : Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.black.withOpacity(0.4),
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your Order",
                                    style: TextStyle(
                                      color: selected == 2
                                          ? Colors.white
                                          : const Color(0xff5d67ea),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "2",
                                    style: TextStyle(
                                      color: selected == 2
                                          ? Colors.white
                                          : const Color(0xff5d67ea),
                                      fontSize: 48,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    selected == 0
                        ? CustomTableWidget(
                            dW: dW, title: "Trips", arr: myTripsArr)
                        : selected == 1
                            ? CustomTableWidget(
                                dW: dW, title: "Trip Orders", arr: myTripsArr)
                            : CustomTableWidget(
                                dW: dW, title: "Your Orders", arr: myTripsArr),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
