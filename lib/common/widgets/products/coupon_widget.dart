
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shepes/containers/rounded_contener.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? KColors.dark : KColors.white,
      padding: const EdgeInsets.only(
          top: KSizes.sm,
          bottom: KSizes.sm,
          right: KSizes.sm,
          left: KSizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration:  InputDecoration(
                hintStyle:  TextStyle(fontSize: 14,color: dark ? KColors.white : KColors.black,),
                hintText: "Have a Promo code? Enter here ",
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button

          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: dark ? KColors.white.withOpacity(0.5) : KColors.dark.withOpacity(0.5),
                    backgroundColor: KColors.gray.withOpacity(0.2),
                    side: BorderSide(color: KColors.gray.withOpacity(0.1)),
                  ),
                  child: const Text("Apply"))),
        ],
      ),
    );
  }
}
