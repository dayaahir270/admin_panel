// import 'package:ecom/common/widgets/brands/t_brand_cart.dart';
// import 'package:flutter/material.dart';
//
// import '../../../utils/constants/colors.dart';
// import '../../../utils/constants/sizes.dart';
// import '../../../utils/helpers/helper_functions.dart';
// import '../custom_shepes/containers/rounded_contener.dart';
//
// class TBrandShowcase extends StatelessWidget {
//   const TBrandShowcase({
//     super.key,
//     required this.images,
//   });
//
//   final List<String> images;
//
//   @override
//   Widget build(BuildContext context) {
//     return TRoundedContainer(
//       showBorder: true,
//       borderColor: KColors.darkGray,
//       backgroundColor: Colors.transparent,
//       padding: const EdgeInsets.all(KSizes.md),
//       margin: const EdgeInsets.only(bottom: KSizes.spaceBtwItems),
//       child: Column(
//         children: [
//           const TBrandCard(
//             showBorder: false,
//           ),
//           const SizedBox(
//             height: KSizes.spaceBtwItems,
//           ),
//           Row(
//             children: images
//                 .map((image) => BrandTopProductImageWidget(image, context))
//                 .toList(),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget BrandTopProductImageWidget(String image, context) {
//     return Expanded(
//         child: TRoundedContainer(
//       height: 100,
//       padding: const EdgeInsets.all(KSizes.md),
//       margin: const EdgeInsets.only(right: KSizes.sm),
//       backgroundColor: THelperFunctions.isDarkMode(context)
//           ? KColors.darkGray
//           : KColors.light,
//       child: Image(
//         fit: BoxFit.contain,
//         image: AssetImage(image),
//       ),
//     ));
//   }
// }
