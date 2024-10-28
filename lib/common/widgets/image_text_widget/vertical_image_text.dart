// import 'package:ecom/common/widgets/images/t_circular_image.dart';
// import 'package:flutter/material.dart';
//
// import '../../../utils/constants/colors.dart';
// import '../../../utils/constants/sizes.dart';
// import '../../../utils/helpers/helper_functions.dart';
//
// class TVerticalImageText extends StatelessWidget {
//   const TVerticalImageText({
//     super.key,
//     required this.image,
//     required this.title,
//     this.textColor = KColors.white,
//     this.backgroundColor,
//     this.onTap,
//     this.isNetworkImage = true,
//   });
//
//   final String image, title;
//   final Color textColor;
//   final Color? backgroundColor;
//   final void Function()? onTap;
//   final bool isNetworkImage;
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.only(right: KSizes.spaceBtwItems),
//         child: Column(
//           children: [
//             TCircularImage(
//               image: image,
//               fit: BoxFit.fitWidth,
//               padding: KSizes.sm * 1.4,
//               isNetworkImage: isNetworkImage,
//               backgroundColor: backgroundColor,
//               overlayColor: dark ? KColors.light : KColors.dark,
//             ),
//
//             const SizedBox(height: KSizes.spaceBtwItems / 2),
//             SizedBox(
//                 width: 55,
//                 child: Center(
//                   child: Text(
//                       title,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor)),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }
