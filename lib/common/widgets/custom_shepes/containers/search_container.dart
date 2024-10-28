// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../../utils/constants/colors.dart';
// import '../../../../utils/constants/sizes.dart';
// import '../../../../utils/device/device_utillity.dart';
// import '../../../../utils/helpers/helper_functions.dart';
//
// class TSearchContainer extends StatelessWidget {
//    const TSearchContainer({
//     super.key,
//     required this.text,
//     this.icon = Iconsax.search_normal,
//     this.showBackground = true,
//     this.showBoarder = true,
//      this.padding =  const EdgeInsets.symmetric(horizontal: KSizes.defaultSpace),
//   });
//
//   final String text;
//   final IconData? icon;
//   final bool showBackground, showBoarder;
//   final EdgeInsetsGeometry  padding;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Padding(
//      padding: padding,
//       child: Container(
//         width: TDeviceUtils.getScreenWidth(context),
//         padding: const EdgeInsets.all(KSizes.md),
//         decoration: BoxDecoration(
//             color: showBackground
//                 ? dark
//                     ? KColors.dark
//                     : KColors.light
//                 : Colors.transparent,
//             borderRadius: BorderRadius.circular(KSizes.cartRadiusLg),
//             border: showBoarder ? Border.all(color: KColors.gray) : null),
//         child: Row(
//           children: [
//             Icon(
//               icon,
//               color: KColors.darkGray,
//             ),
//             const SizedBox(
//               width: KSizes.spaceBtwItems,
//             ),
//             Text(
//               text,
//               style: Theme.of(context).textTheme.bodyMedium,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
