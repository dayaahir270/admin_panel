import 'package:admin_panel/common/widgets/shimmer/shimmer.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class TCategoryShimmer extends StatelessWidget {
  const TCategoryShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
        const SizedBox (width: KSizes.spaceBtwItems),
        itemBuilder: (_, __) {
          return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Image
                TShimmerEffect(width: 55, height: 55, radius: 55),
                SizedBox(height: KSizes.spaceBtwItems / 2),

                /// Text
                TShimmerEffect(width: 55, height: 8),
              ]
          );
        },
      ),
    );
  }
}