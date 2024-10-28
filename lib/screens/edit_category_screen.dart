
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../common/widgets/appbar/appbar.dart';
import '../controller/edit_category_controller.dart';
import '../model/category_model.dart';
import '../utils/app_constants.dart';

class EditCategoryScreen extends StatefulWidget {
  CategoriesModel categoriesModel;
  EditCategoryScreen({super.key, required this.categoriesModel});

  @override
  State<EditCategoryScreen> createState() => _EditCategoryScreenState();
}

class _EditCategoryScreenState extends State<EditCategoryScreen> {
  TextEditingController categoryNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    categoryNameController.text = widget.categoriesModel.categoryName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(widget.categoriesModel.categoryName),
      ),
      body: Container(
        child: Column(
          children: [
            GetBuilder(
              init: EditCategoryController(
                  categoriesModel: widget.categoriesModel),
              builder: (editCategory) {
                return editCategory.categoryImage.value != ''
                    ? Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: editCategory.categoryImage.value.toString(),
                      fit: BoxFit.contain,
                      height: Get.height / 5.5,
                      width: Get.width / 2,
                      placeholder: (context, url) => const Center(
                          child: CupertinoActivityIndicator()),
                      errorWidget: (context, url, error) =>
                      const Icon(Icons.error),
                    ),
                    Positioned(
                      right: 10,
                      top: 0,
                      child: InkWell(
                        onTap: () async {
                          EasyLoading.show();
                          await editCategory.deleteImagesFromStorage(
                              editCategory.categoryImage.value.toString());
                          await editCategory.deleteImageFromFireStore(
                              editCategory.categoryImage.value.toString(),
                              widget.categoriesModel.categoryId);
                          EasyLoading.dismiss();
                        },
                        child: const CircleAvatar(
                          backgroundColor: AppConstant.appScendoryColor,
                          child: Icon(
                            Icons.close,
                            color: AppConstant.appTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                    : const SizedBox.shrink();
              },
            ),

            //
            const SizedBox(height: 10.0),
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

            Container(
              width: 330,
              child: ElevatedButton(
                onPressed: () async {
                  EasyLoading.show();
                  CategoriesModel categoriesModel = CategoriesModel(
                    categoryId: widget.categoriesModel.categoryId,
                    categoryName: categoryNameController.text.trim(),
                    categoryImage: widget.categoriesModel.categoryImage,
                    createdAt: widget.categoriesModel.createdAt,
                    updatedAt: DateTime.now(),
                  );

                  await FirebaseFirestore.instance
                      .collection('categories')
                      .doc(categoriesModel.categoryId)
                      .update(categoriesModel.toJson());

                  EasyLoading.dismiss();
                },
                child: const Text("Update"),
              ),
            )
          ],
        ),
      ),
    );
  }
}