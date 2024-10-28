import 'package:admin_panel/screens/all_order_screen.dart';
import 'package:admin_panel/screens/all_user_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/all_category_screen.dart';
import '../screens/all_product_screen.dart';
import '../screens/main_screen.dart';
import '../utils/app_constants.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  User? user = FirebaseAuth.instance.currentUser;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  // final GoogleSignInController googleSignInController =
  //     Get.put(GoogleSignInController());

  String userName = 'User';
  String firstLetter = 'U';

  // Future<dynamic> getUserData() async {
  //   if (user != null) {
  //     final DocumentSnapshot snapshot = await FirebaseFirestore.instance
  //         .collection('users')
  //         .doc(user!.uid.toString())
  //         .get();

  //     UserModel userModel =
  //         UserModel.fromJson(snapshot.data() as Map<String, dynamic>);
  //     userName = userModel.username;
  //     firstLetter = userModel.username[0];
  //     setState(() {});

  //     print(userName);
  //   } else {}
  // }

  @override
  void initState() {
    super.initState();

    // if (user != null) {
    //   getUserData();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 25),
      child: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            )),
        width: Get.width - 80.0,
        backgroundColor: Colors.black54,
        child: Wrap(
          runSpacing: 10,
          children: [
            user != null
                ? Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 20.0),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text(
                  userName.toString(),
                  style: TextStyle(),
                ),
                subtitle: Text(
                  '1.20.0',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: CircleAvatar(
                  radius: 22.0,
                  //backgroundColor: AppConstant.appMainColor,
                  child: Text(
                    firstLetter,
                   // style: TextStyle(color: AppConstant.appTextColor),
                  ),
                ),
              ),
            )
                : Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10.0, vertical: 20.0),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                title: Text(
                  "Guest",
                  style: TextStyle(color: AppConstant.appTextColor),
                ),
                subtitle: Text(
                  '1.20.1',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: CircleAvatar(
                  radius: 22.0,
                  backgroundColor: AppConstant.appMainColor,
                  child: Text(
                    "G",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                ),
              ),
            ),
            Divider(
              indent: 10.0,
              endIndent: 10.0,
              thickness: 1.5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.offAll(() => MainScreen());
                },
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Iconsax.home,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.to(() => AllUsersScreen());
                },
                title: Text(
                  'Users',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Iconsax.user,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.to(() => AllOrdersScreen());
                },
                title: Text(
                  'Orders ',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Iconsax.shopping_bag,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () {
                  Get.back();
                  Get.to(() =>  AllProductsScreen());
                },
                title: Text(
                  'Products',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Iconsax.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                onTap: () async {
                  Get.to(() => AllCategoriesScreen());

                },
                title: Text(
                  'Categories',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Iconsax.category,
                  color: Colors.white,
                ),
              ),
            ),
            if (user != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  onTap: () {
                    // Get.back();
                    // Get.to(() => CustomerReviews());
                  },
                  title: Text(
                    'Customer Reviews',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.reviews_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () async {
                  // Get.back();
                  // EasyLoading.show(status: "Please wait");
                  //
                  // // Get.to(() => ContactScreen());
                  // // await sendMessage();
                  // EasyLoading.dismiss();
                  // Get.to(() => ContactScreen());
                },
                title: Text(
                  'Contact',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Iconsax.call,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                onTap: () async {
                  // if (user != null) {
                  //   EasyLoading.show();
                  //   await FirebaseAuth.instance.signOut();
                  //   await _googleSignIn.signOut();
                  //   Get.offAll(() => MainScreen());
                  //   EasyLoading.dismiss();
                  // } else {
                  //   Get.back();
                  //   await googleSignInController.signInWithGoogle();
                  // }
                },
                title: Text(
                  user != null ? 'Logout' : 'Login',
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  user != null ? Iconsax.logout : Iconsax.login,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        // backgroundColor: Colors.grey.shade900,
      ),
    );
  }

  // // send whatsapp message
  // static Future<void> sendMessage() async {
  //   final phoneNumber = '9925632830';
  //   final message =
  //       "Hello Wheel Faster Store"; // Replace with your message
  //
  //   final url =
  //       'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';
  //
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}