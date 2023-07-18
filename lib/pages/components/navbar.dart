import 'package:flutter/material.dart';

class CustomNavbarWidget extends StatelessWidget {
  const CustomNavbarWidget({
    super.key,
    required this.dW,
    required this.navSelected,
  });

  final double dW;
  final int navSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: dW,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(color: const Color(0xff5d67ea), boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.5),
              blurRadius: 2,
              offset: const Offset(0, 1),
            )
          ]),
          child: const Text(
            "Delivery on Wheels",
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 20,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffc5c5c5).withOpacity(0.5),
          ),
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/dashboard");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: navSelected == 0
                        ? const Color(0xff5d67ea).withOpacity(0.8)
                        : Colors.transparent,
                  ),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: navSelected == 0
                          ? Color(0xffffffff)
                          : Color(0xff5d67ea),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/new-trip");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: navSelected == 1
                        ? const Color(0xff5d67ea).withOpacity(0.8)
                        : Colors.transparent,
                  ),
                  child: Text(
                    "New Trip",
                    style: TextStyle(
                      color: navSelected == 1
                          ? Color(0xffffffff)
                          : Color(0xff5d67ea),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/new-order");
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: navSelected == 2
                        ? const Color(0xff5d67ea).withOpacity(0.8)
                        : Colors.transparent,
                  ),
                  child: Text(
                    "New Order",
                    style: TextStyle(
                      color: navSelected == 2
                          ? const Color(0xffffffff)
                          : const Color(0xff5d67ea),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
