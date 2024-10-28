import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../common/widgets/appbar/appbar.dart';
import '../controller/category_drop_down_controller.dart';
import '../controller/is_sale_controller.dart';
import '../controller/product_image_controller.dart';
import '../model/product_model.dart';
import '../service/genrate_ids_service.dart';
import '../utils/app_constants.dart';
import '../widgets/drop_down_category_widget.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({super.key});

  AddProductImagesController addProductImagesController =
      Get.put(AddProductImagesController());
  CategoryDropDownController categoryDropDownController =
      Get.put(CategoryDropDownController());


  IsSaleController isSaleController = Get.put(IsSaleController());
  TextEditingController productNameController = TextEditingController();
  TextEditingController salePriceController = TextEditingController();
  TextEditingController fullPriceController = TextEditingController();
  TextEditingController deliveryTimeController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Add Products"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: 400,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text("Select Images"),
                    Container(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          addProductImagesController.showImagesPickerDialog();
                        },
                        child: Text("Select Images"),
                      ),
                    )
                  ],
                ),
              ),
              //show Images
              GetBuilder<AddProductImagesController>(
                init: AddProductImagesController(),
                builder: (imageController) {
                  return imageController.selectedIamages.length > 0
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width - 20,
                          height: Get.height / 3.0,
                          child: GridView.builder(
                            itemCount: imageController.selectedIamages.length,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children: [
                                  Image.file(
                                    File(addProductImagesController
                                        .selectedIamages[index].path),
                                    fit: BoxFit.cover,
                                    height: Get.height / 4,
                                    width: Get.width / 2,
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 0,
                                    child: InkWell(
                                      onTap: () {
                                        imageController.removeImages(index);
                                        print(imageController
                                            .selectedIamages.length);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            AppConstant.appScendoryColor,
                                        child: Icon(
                                          Icons.close,
                                          color: AppConstant.appTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      : SizedBox.shrink();
                },
              ),
              DropDownCategoriesWidget(),

              //isSale
              GetBuilder<IsSaleController>(
                init: IsSaleController(),
                builder: (isSaleController) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Is Sale"),
                        ),
                        Switch(
                          value: isSaleController.isSale.value,
                          activeColor: AppConstant.appMainColor,
                          onChanged: (value) {
                            isSaleController.toggleIsSale(value);
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
              //form
              SizedBox(height: 10.0),
              Container(
                height: 65,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appMainColor,
                  textInputAction: TextInputAction.next,
                  controller: productNameController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    hintText: "Product Name",
                    hintStyle: TextStyle(fontSize: 12.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),

              Obx(() {
                return isSaleController.isSale.value
                    ? Container(
                  height: 65,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    cursorColor: AppConstant.appMainColor,
                    textInputAction: TextInputAction.next,
                    controller: salePriceController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      hintText: "Sale Price",
                      hintStyle: TextStyle(fontSize: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                )
                    : SizedBox.shrink();
              }),

              SizedBox(height: 10.0),
              Container(
                height: 65,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appMainColor,
                  textInputAction: TextInputAction.next,
                  controller: fullPriceController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    hintText: "Full Price",
                    hintStyle: TextStyle(fontSize: 12.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              Container(
                height: 65,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appMainColor,
                  textInputAction: TextInputAction.next,
                  controller: deliveryTimeController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    hintText: "Delivery Time",
                    hintStyle: TextStyle(fontSize: 12.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              Container(
                height: 65,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  cursorColor: AppConstant.appMainColor,
                  textInputAction: TextInputAction.next,
                  controller: productDescriptionController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    hintText: "Product Desc",
                    hintStyle: TextStyle(fontSize: 12.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                width: 330,
                child: ElevatedButton(
                  onPressed: () async {
                    // print(productId);
                    // print(productId);
                    try {
                      EasyLoading.show();
                      await addProductImagesController.uploadFunction(
                          addProductImagesController.selectedIamages);
                      //print(addProductImagesController.arrImagesUrl);

                      String productId = GenerateIds().generateProductId();

                      ProductModel productModel = ProductModel(
                        productId: productId,
                        categoryId: categoryDropDownController.selectedCategoryId
                            .toString(),
                        productName: productNameController.text.trim(),
                        categoryName: categoryDropDownController
                            .selectedCategoryName
                            .toString(),
                        salePrice: salePriceController.text != ''
                            ? salePriceController.text.trim()
                            : '',
                        fullPrice: fullPriceController.text.trim(),
                        productImages: addProductImagesController.arrImagesUrl,
                        deliveryTime: deliveryTimeController.text.trim(),
                        isSale: isSaleController.isSale.value,
                        productDescription:
                        productDescriptionController.text.trim(),
                        createdAt: DateTime.now(),
                        updatedAt: DateTime.now(),
                      );

                      await FirebaseFirestore.instance
                          .collection('products')
                          .doc(productId)
                          .set(productModel.toMap());
                      EasyLoading.dismiss();
                    } catch (e) {
                      print("error : $e");
                    }



                  },
                  child: const Text("Upload"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
