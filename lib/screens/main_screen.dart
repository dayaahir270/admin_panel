import 'package:flutter/material.dart';
import '../widgets/drawer_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final GetAllOrdersChart getAllOrdersChart = Get.put(GetAllOrdersChart());
    return  Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.blue,
        title: Text("         Admin Panel",style: Theme.of(context).textTheme.headlineMedium),
      ),
      drawer: DrawerWidget(),

    );
  }
}