
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image

        TRoundedImage(
          imageUrl: "assets/products/fan.jpg",
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(KSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? KColors.darkerGrey : KColors.light,
        ),
        const SizedBox(height: KSizes.spaceBtwItems),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: "Havels"),
              const Flexible(child: TProductTitleText(title: "Havels fen",maxLines: 1,)),

              Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: "Color", style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: "Green", style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: "Size", style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: "UK 07", style: Theme.of(context).textTheme.bodyLarge),

                    ]
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
