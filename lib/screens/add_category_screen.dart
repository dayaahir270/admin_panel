import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../common/widgets/appbar/appbar.dart';
import '../controller/product_image_controller.dart';
import '../model/category_model.dart';
import '../service/genrate_ids_service.dart';
import '../utils/app_constants.dart';

class AddCategoriesScreen extends StatefulWidget {
  const AddCategoriesScreen({super.key});

  @override
  State<AddCategoriesScreen> createState() => _AddCategoriesScreenState();
}

class _AddCategoriesScreenState extends State<AddCategoriesScreen> {
  TextEditingController categoryNameController = TextEditingController();
  AddProductImagesController addProductImagesController =
  Get.put(AddProductImagesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text("Add Categories"),

      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Select Images"),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        addProductImagesController.showImagesPickerDialog();
                      },
                      child: const Text("Select Images"),
                    ),
                  )
                ],
              ),
            ),

            //show Images
            GetBuilder<AddProductImagesController>(
              init: AddProductImagesController(),
              builder: (imageController) {
                return imageController.selectedIamages.isNotEmpty
                    ? Container(
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
                              child: const CircleAvatar(
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
                    : const SizedBox.shrink();
              },
            ),

            const SizedBox(height: 40.0),
            Container(
              height: 65,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                cursorColor: AppConstant.appMainColor,
                textInputAction: TextInputAction.next,
                controller: categoryNameController,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  hintText: "Category Name",
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
                  EasyLoading.show();
                  await addProductImagesController.uploadFunction(
                      addProductImagesController.selectedIamages);
                  String categoryId = await GenerateIds().generateCategoryId();

                  // String cateImg = addProductImagesController.arrImagesUrl[0]
                  //     .toString() as String;

                  // print(cateImg);

                  CategoriesModel categoriesModel = CategoriesModel(
                    categoryId: categoryId,
                    categoryName: categoryNameController.text.trim(),
                    categoryImage: addProductImagesController.arrImagesUrl[0].toString(),
                    createdAt: DateTime.now(),
                    updatedAt: DateTime.now(),
                  );
                  print(categoryId);

                  //
                  FirebaseFirestore.instance
                      .collection('categories')
                      .doc(categoryId)
                      .set(categoriesModel.toJson());

                  EasyLoading.dismiss();
                },
                child: Text("Save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}