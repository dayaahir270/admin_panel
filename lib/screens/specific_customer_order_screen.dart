

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../model/order_model.dart';
import 'check_singal_order_screen.dart';

class SpecificCustomerOrderScreen extends StatelessWidget {
  String docId;
  String customerName;
  SpecificCustomerOrderScreen({
    super.key,
    required this.docId,
    required this.customerName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: AppConstant.appMainColor,
        title: Text(customerName),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .doc(docId)
            .collection('confirmOrders')
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error occurred while fetching orders!'),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (snapshot.data!.docs.isEmpty) {
            return Container(
              child: const Center(
                child: Text('No orders found!'),
              ),
            );
          }

          if (snapshot.data != null) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final data = snapshot.data!.docs[index];
                String orderDocId = data.id;
                OrderModel orderModel = OrderModel(
                  categoryId: data['categoryId'],
                  categoryName: data['categoryName'],
                  createdAt: data['createdAt'],
                  customerAddress: data['customerAddress'],
                  customerDeviceToken: data['customerDeviceToken'],
                  customerId: data['customerId'],
                  customerName: data['customerName'],
                  customerPhone: data['customerPhone'],
                  deliveryTime: data['deliveryTime'],
                  fullPrice: data['fullPrice'],
                  isSale: data['isSale'],
                  productDescription: data['productDescription'],
                  productId: data['productId'],
                  productImages: data['productImages'],
                  productName: data['productName'],
                  productQuantity: data['productQuantity'],
                  productTotalPrice: data['productTotalPrice'],
                  salePrice: data['salePrice'],
                  status: data['status'],
                  updatedAt: data['updatedAt'],
                );

                return Card(
                  elevation: 5,
                  child: ListTile(
                    onTap: () => Get.to(
                          () => CheckSingleOrderScreen(
                        docId: snapshot.data!.docs[index].id,
                        orderModel: orderModel,
                      ),
                    ),
                    leading: CircleAvatar(
                     // backgroundColor: AppConstant.appScendoryColor,
                      child: Text(orderModel.customerName[0]),
                    ),
                    title: Text(data['customerName']),
                    subtitle: Text(orderModel.productName),
                    trailing: InkWell(
                      onTap: () {
                        showBottomSheet(
                          userDocId: docId,
                          orderModel: orderModel,
                          orderDocId: orderDocId,
                        );
                      },
                      child: Icon(Iconsax.more),
                    ),
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

  void showBottomSheet({

    required String userDocId,
    required OrderModel orderModel,
    required String orderDocId,
    //final dark = THelperFunctions.isDarkMode(context);
  }) {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () async {
                        await FirebaseFirestore.instance
                            .collection('orders')
                            .doc(userDocId)
                            .collection('confirmOrders')
                            .doc(orderDocId)
                            .update(
                          {
                            'status': false,
                          },
                        );
                      },
                      child: Text('Pending'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () async {
                          await FirebaseFirestore.instance
                              .collection('orders')
                              .doc(userDocId)
                              .collection('confirmOrders')
                              .doc(orderDocId)
                              .update(
                            {
                              'status': true,
                            },
                          );
                        },
                        child: Text('Delivered')),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}