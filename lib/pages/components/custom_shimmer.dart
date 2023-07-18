import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.sBR,
    required this.sH,
    required this.sW,
  });

  final double sBR;
  final double sH;
  final double sW;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff000000).withOpacity(0.9),
          borderRadius: BorderRadius.circular(sBR),
        ),
        height: sH,
        width: sW,
      ),
    );
  }
}
