import 'package:flutter/material.dart';
import 'package:delivery_on_wheels/pages/components/custom_table_widget.dart';
import 'package:delivery_on_wheels/pages/components/navbar.dart';

class NewOrder extends StatefulWidget {
  const NewOrder({super.key});

  @override
  State<NewOrder> createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  @override
  int selected = 2;
  int navSelected = 2;
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
                    Text("Hello"),
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
