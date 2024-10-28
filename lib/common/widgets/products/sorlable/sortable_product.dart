// import 'package:ecom/features/shop/controller/all_product_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
//
// import '../../../../features/shop/models/product/product_model.dart';
// import '../../../../utils/constants/sizes.dart';
// import '../../layouts/grid_layout.dart';
// import '../product_cart/product_cart_verticall.dart';
//
//
// class TSortableProducts extends StatelessWidget {
//   const TSortableProducts({
//     super.key, required this.products,
//   });
//
//   final List<ProductModel> products;
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     final controller = Get.put(AllProductController());
//     controller.assignProducts(products);
//     return Column(
//       children: [
//         /// Dropdown
//         DropdownButtonFormField(
//           value: controller.selectedSortOption.value,
//           decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
//           onChanged: (value) {
//             controller.sortProducts(value!);
//           },
//           items: [
//             "Name",
//             "Higher Price",
//             "Lower Price",
//             "Sale",
//             "Newest",
//             "Popularity"
//           ]
//               .map((option) => DropdownMenuItem(
//               value:  option,
//               child: Text(option)
//           ))
//               .toList(),
//         ),
//         SizedBox(height: KSizes.spaceBtwSections),
//
//         Obx(() =>  TGridLayout(itemCount: controller.products.length, itemBuilder: (_, index) => TProductCardVertical(product: controller.products[index],)))
//       ],
//     );
//   }
// }
