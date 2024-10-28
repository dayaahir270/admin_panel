
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadow.dart';
import '../../custom_shepes/containers/rounded_contener.dart';
import '../../favorite_icon/favorite_icon.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title_text.dart';
import '../../texts/t_brand_title_text_with_verified_icon.dart';

class TProductCardVertical extends StatelessWidget {
  const  TProductCardVertical({super.key, /*required this.product*/});

  //final ProductModel product;

  @override
  Widget build(BuildContext context) {
    /*final controller = ProductController.instance;*/
    // final salePercentage = controller.calculateSalePercentage(product.price.toDouble(), product.salePrice.toDouble());
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      //onTap: () => Get.to(() => ProductDetailScreen(product:/* product*/null,)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(KSizes.productImageRadius),
            color: dark ? KColors.darkGray : KColors.white),
        child: Column(
          children: [

            /// Thumbnail , WishList , Discount Tag

            TRoundedContainer(
              height: 187,
              width: 187,
              backgroundColor: dark ? KColors.dark : KColors.light,
              child: Stack(
                children: [

                  /// Thumbnail Image

                   const Center(
                     child: TRoundedImage(
                      imageUrl: '',
                      applyImageRadius: true,
                       isNetworkImage: true,
                                       ),
                   ),

                  /// sale tag

                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: KSizes.sm,
                      backgroundColor: KColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: KSizes.sm, vertical: KSizes.xs),
                      child: Text('64%',
                          style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black)),
                    ),
                  ),

                  /// Favourite Icon Button

                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TFavoriteIcon(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),

            /// Details

             const Padding(
              padding: EdgeInsets.only(left: KSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: '', smallSize: true,),
                  SizedBox(height: KSizes.spaceBtwItems / 2,),
                  TBrandTitleWithVerifiedIcon(title: "",brandTextSize: TextSizes.large),

                ],
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                /// Prise

                /* Flexible(
                   child: Column(
                     children: [
                       if( ProductType.single.toString() && product.salePrice > 0)

                         Padding(
                           padding: EdgeInsets.only(left: KSizes.sm),
                           child: Text(
                             product.price.toString(),
                             style: Theme.of(context).textTheme.labelMedium!.apply(decoration: TextDecoration.lineThrough),
                           )
                         ),

                       Padding(
                        padding: EdgeInsets.only(left: KSizes.sm),
                        child: TProductPriceText(price: controller.getProductPrice(product),),
                                       ),
                     ],
                   ),
                 ), */


                Container(
                  decoration: const BoxDecoration(
                      color: KColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(KSizes.cartRadiusMd),
                        bottomRight:
                        Radius.circular(KSizes.productImageRadius),
                      )),
                  child: const SizedBox(
                      width: KSizes.iconLg * 1.2,
                      height: KSizes.iconLg * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: KColors.white,
                        ),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
//
// class TBrandTitleWithVerifiedIcon extends StatelessWidget {
//   const TBrandTitleWithVerifiedIcon({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           'Nike',
//           overflow: TextOverflow.ellipsis,
//           maxLines: 1,
//           style: Theme.of(context).textTheme.labelMedium,
//         ),
//         SizedBox(
//           width: KSizes.xs,
//         ),
//         Icon(
//           Iconsax.verify5,
//           color: KColors.primary,
//         )
//       ],
//     );
//   }
// }
