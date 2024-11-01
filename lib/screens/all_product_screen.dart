import 'package:admin_panel/screens/product_detail_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:get/get.dart';
import '../common/widgets/appbar/appbar.dart';
import '../controller/category_drop_down_controller.dart';
import '../controller/is_sale_controller.dart';
import '../model/product_model.dart';
import '../utils/app_constants.dart';
import 'add_product_screen.dart';
import 'edit_product_screen.dart';

class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({super.key});

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: const Text("All Products"),
        actions: [
          GestureDetector(
            onTap: () => Get.to(() => AddProductScreen()),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('products')
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Container(
              child: Center(
                child: Text('Error occurred while fetching products!'),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              child: Center(
                child: CupertinoActivityIndicator(),
              ),
            );
          }
          if (snapshot.data!.docs.isEmpty) {
            return Container(
              child: Center(
                child: Text('No products found!'),
              ),
            );
          }

          if (snapshot.data != null) {
            return ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final data = snapshot.data!.docs[index];

                ProductModel productModel = ProductModel(
                  productId: data['productId'],
                  categoryId: data['categoryId'],
                  productName: data['productName'],
                  categoryName: data['categoryName'],
                  salePrice: data['salePrice'],
                  fullPrice: data['fullPrice'],
                  productImages: data['productImages'],
                  deliveryTime: data['deliveryTime'],
                  isSale: data['isSale'],
                  productDescription: data['productDescription'],
                  createdAt: data['createdAt'],
                  updatedAt: data['updatedAt'],
                );

                return SwipeActionCell(
                  key: ObjectKey(productModel.productId),

                  /// this key is necessary
                  trailingActions: <SwipeAction>[
                    SwipeAction(
                title: "Delete",
                    onTap: (CompletionHandler handler) async {
                      await Get.defaultDialog(
                        title: "Delete Product",
                        content: Text(
                            "Are you sure you want to delete this product?"),
                        textCancel: "Cancel",
                        textConfirm: "Delete",
                        contentPadding: EdgeInsets.all(10.0),
                        confirmTextColor: Colors.white,
                        onCancel: () {},
                        onConfirm: () async {
                          Get.back(); // Close the dialog
                          EasyLoading.show(status: 'Please wait..');

                          await deleteImagesFromFirebase(
                            productModel.productImages,
                          );

                          await FirebaseFirestore.instance
                              .collection('products')
                              .doc(productModel.productId)
                              .delete();

                          EasyLoading.dismiss();
                        },
                        buttonColor: Colors.red,
                        cancelTextColor: Colors.black,
                      );
                    },
                    )
                  ],
                  child: ListTile(
                    onTap: () {
                      Get.to(() => SingleProductDetailScreen(
                          productModel: productModel));
                    },
                    leading: CircleAvatar(
                      backgroundColor: AppConstant.appScendoryColor,
                      backgroundImage: CachedNetworkImageProvider(
                        productModel.productImages[0],
                        errorListener: (err) {
                          // Handle the error here
                          print('Error loading image');
                          Icon(Icons.error);
                        },
                      ),
                    ),
                    title: Text(productModel.productName),
                    subtitle: Text(productModel.productId),
                    trailing: GestureDetector(
                        onTap: () {
                          final editProdouctCategory =
                              Get.put(CategoryDropDownController());
                          final isSaleController = Get.put(IsSaleController());
                          editProdouctCategory
                              .setOldValue(productModel.categoryId);
                          isSaleController
                              .setIsSaleOldValue(productModel.isSale);
                          Get.to(() =>
                              EditProductScreen(productModel: productModel));
                        },
                        child: Icon(Icons.edit)),
                  ),
                );
              },
            );
          }

          return Container();
        },
      ),
    );
  }

  Future deleteImagesFromFirebase(List imagesUrls) async {
    final FirebaseStorage storage = FirebaseStorage.instance;

    for (String imageUrl in imagesUrls) {
      try {
        Reference reference = storage.refFromURL(imageUrl);

        await reference.delete();
      } catch (e) {
        print("Error $e");
      }
    }
  }
}
