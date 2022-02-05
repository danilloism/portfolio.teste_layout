import 'package:curso_layout/pages/cart.page.dart';
import 'package:curso_layout/pages/home.page.dart';
import 'package:curso_layout/pages/login.page.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TabBarView(
        children: [
          HomePage(),
          CartPage(),
          LoginPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        indicatorPadding: const EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
        automaticIndicatorColorAdjustment: true,
      ),
    );
  }
}
