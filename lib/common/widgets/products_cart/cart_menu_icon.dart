//
// import 'package:ecom/features/shop/screen/cart/cart_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../utils/constants/colors.dart';
//
// class TCartCounterIcon extends StatelessWidget {
//   const TCartCounterIcon({
//     super.key, required this.onPressed,  this.iconColor,
//   });
//
//   final VoidCallback onPressed;
//   final Color? iconColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         IconButton(onPressed: () => Get.to(()=> const CartScreen()), icon:  Icon(Iconsax.shopping_bag, color:iconColor)),
//         Positioned(
//           right: 0,
//           child: Container(
//             width: 20,
//             height: 20,
//             decoration: BoxDecoration(
//               color: KColors.black.withOpacity(0.5),
//               borderRadius: BorderRadius.circular(100),
//             ),
//             child: Center(child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: KColors.white, fontSizeFactor: 0.8),)),
//           ),
//         ),
//       ],
//     );
//   }
// }
