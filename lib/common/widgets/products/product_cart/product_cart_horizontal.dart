// import 'package:ecom/common/widgets/custom_shepes/containers/rounded_contener.dart';
// import 'package:ecom/common/widgets/images/t_rounded_image.dart';
// import 'package:ecom/common/widgets/texts/product_price_text.dart';
// import 'package:ecom/common/widgets/texts/product_title_text.dart';
// import 'package:ecom/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/sizes.dart';
// import '../../../../utils/helpers/helper_functions.dart';
// import '../../favorite_icon/favorite_icon.dart';
//
// class TProductCardHorizontal extends StatelessWidget {
//   const TProductCardHorizontal({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Container(
//       width: 310,
//       padding: const EdgeInsets.all(1),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(KSizes.productImageRadius),
//         color: dark ? KColors.darkGray : KColors.softGray ,
//       ),
//       child: Row(
//         children: [
//           /// Thumbnail
//           TRoundedContainer(
//             height: 120,
//             padding: EdgeInsets.all(KSizes.sm),
//             backgroundColor: dark ? KColors.dark : KColors.light,
//             child:  Stack(
//               children: [
//                 /// Thumbnail Image
//                 SizedBox(
//                     height: 120,
//                     width: 120,
//                     child: TRoundedImage(
//                       imageUrl: "assets/products/download (6).jpeg",
//                       applyImageRadius: true,
//                     )),
//                 /// sale tag
//
//                 Positioned(
//                   top: 12,
//                   child: TRoundedContainer(
//                     radius: KSizes.sm,
//                     backgroundColor: KColors.secondary.withOpacity(0.8),
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: KSizes.sm, vertical: KSizes.xs),
//                     child: Text('35%',
//                         style: Theme
//                             .of(context)
//                             .textTheme
//                             .labelLarge!
//                             .apply(color: Colors.black)),
//                   ),
//                 ),
//
//                 /// Favourite Icon Button
//
//                 const Positioned(
//                   top: 0,
//                   right: 0,
//                   child: TFavoriteIcon(),
//                 ),
//               ],
//             ),
//           ),
//
//           /// Details
//           SizedBox(
//             width: 172,
//             child: Padding(
//               padding: const EdgeInsets.only(top: KSizes.sm, left: KSizes.sm),
//               child:  Column(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       TProductTitleText(title: "SP 2V DC Fan kit (555 DC Motor + 6 inch Fan Blade + 1 mtr Copper Wire + Switch)", smallSize: true),
//                       SizedBox(height: KSizes.spaceBtwItems / 2),
//                       TBrandTitleWithVerifiedIcon(title: "blu"),
//                     ],
//                   ),
//                   Spacer(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(child: TProductPriceText(price: "120")),
//                       Container(
//                         decoration: const BoxDecoration(
//                             color: KColors.dark,
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(KSizes.cartRadiusMd),
//                               bottomRight:
//                               Radius.circular(KSizes.productImageRadius),
//                             )),
//                         child: const SizedBox(
//                             width: KSizes.iconLg * 1.2,
//                             height: KSizes.iconLg * 1.2,
//                             child: Center(
//                               child: Icon(
//                                 Iconsax.add,
//                                 color: KColors.white,
//                               ),
//                             )),
//                       ),
//
//
//
//
//
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
