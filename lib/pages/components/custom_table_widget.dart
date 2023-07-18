import 'package:flutter/material.dart';

class CustomTableWidget extends StatelessWidget {
  const CustomTableWidget({
    super.key,
    required this.dW,
    required this.title,
    required this.arr,
  });

  final double dW;
  final String title;
  final List arr;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dW,
      height: 350,
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xffc5c5c5).withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xff5d67ea),
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              width: dW,
              height: 270,
              child: arr.length > 0
                  ? ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1, color: Colors.black.withOpacity(0.4)),
                            color: const Color(0xff5d67ea).withOpacity(0.9),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${index + 1}.',
                                    style: TextStyle(
                                      fontSize: dW > 500 ? 24 : 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: dW > 500 ? 20 : 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${arr[index]["from"]} to ${arr[index]["to"]}",
                                        style: TextStyle(
                                          fontSize: dW > 500 ? 24 : 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "# Trip ID: ${arr[index]['id']} | Date- ${arr[index]['startDate']}",
                                        style: TextStyle(
                                          fontSize: dW > 500 ? 16 : 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: dW > 500 ? 24 : 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: arr.length,
                    )
                  : const Center(
                      child: Text("No Data Found !"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
