import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../icon/t_circular_icon.dart';


class TFavoriteIcon extends StatelessWidget {
  const TFavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(FavoriteController());
    return const TCircularIcon(icon: Iconsax.heart5, color: Colors.red,);
  }
}
