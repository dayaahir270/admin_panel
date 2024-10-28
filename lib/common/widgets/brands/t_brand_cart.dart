// import 'package:ecom/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
// import 'package:flutter/material.dart';
//
// import '../../../utils/constants/colors.dart';
// import '../../../utils/constants/sizes.dart';
// import '../../../utils/helpers/helper_functions.dart';
// import '../custom_shepes/containers/rounded_contener.dart';
// import '../images/t_circular_image.dart';
//
// class TBrandCard extends StatelessWidget {
//   const TBrandCard({super.key, required this.showBorder, this.onTap});
//
//   final bool showBorder;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//    // final isDark = THelperFunctions.isDarkMode(context);
//     return GestureDetector(
//       onTap: onTap,
//       child: TRoundedContainer(
//         padding: const EdgeInsets.all(
//           KSizes.sm,
//         ),
//         showBorder: showBorder,
//         backgroundColor: Colors.transparent,
//         child: Row(
//           children: [
//             /// Icon
//
//             Flexible(
//               child: TCircularImage(
//                 isNetworkImage: false,
//                 image: 'assets/icons/shirt.png',
//                 backgroundColor: Colors.transparent,
//                 overlayColor: THelperFunctions.isDarkMode(context)
//                     ? KColors.white
//                     : KColors.black,
//               ),
//             ),
//             const SizedBox(width: KSizes.spaceBtwItems / 2),
//
//             /// Text
//             /// large name to expended ///
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const TBrandTitleWithVerifiedIcon(
//                   textColor: KColors.darkGray,
//                   title: 'Nike',
//                 ),
//                 Text(
//                   '256 Products',
//                   overflow: TextOverflow.ellipsis,
//                   style: Theme.of(context).textTheme.labelMedium,
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
