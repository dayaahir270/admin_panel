import 'package:flutter/cupertino.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width ,
    this.height ,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.backgroundColor = KColors.light,
    this.isNetworkImage = false,
    this.boarderRadius = KSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double boarderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(boarderRadius),
            border: border,
            color: backgroundColor),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(boarderRadius)
              : BorderRadius.zero,
          child: Image(
              fit: fit,
               image: //isNetworkImage
              //     ? NetworkImage(imageUrl) :
                   AssetImage(imageUrl) as ImageProvider,
          ),

        ),
      ),
    );
  }
}
