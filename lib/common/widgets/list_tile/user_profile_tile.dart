// import 'package:ecom/features/personalization/controller/user_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../utils/constants/colors.dart';
// import '../images/t_circular_image.dart';
//
// class TUserProfileTile extends StatelessWidget {
//    TUserProfileTile({
//     super.key, required this.onPressed,
//   });
//   final VoidCallback onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = UserController.instance;
//     return ListTile(
//       leading: const TCircularImage(
//         image: "assets/images/man.png",
//         width: 50,
//         height: 50,
//         padding: 0,
//       ),
//       title: Text(controller.user.value.fullName,
//           style: Theme.of(context)
//               .textTheme
//               .headlineSmall!
//               .apply(color: KColors.white)),
//       subtitle: Text(controller.user.value.email,
//           style: Theme.of(context)
//               .textTheme
//               .bodyMedium!
//               .apply(color: KColors.white)),
//       trailing: IconButton(
//         onPressed: onPressed,
//
//           icon: const Icon(
//             Iconsax.edit,
//             color: KColors.white,
//           )),
//     );
//   }
// }