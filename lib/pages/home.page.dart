import 'package:curso_layout/widgets/category/category-list.widget.dart';
import 'package:curso_layout/widgets/product/product-list.widget.dart';
import 'package:curso_layout/widgets/search-box.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            const SearchBox(),
            const SizedBox(height: 30),
            Text(
              "Categories",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 90,
              child: CategoryList(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  width: 100,
                  child: TextButton(
                      onPressed: () {},
                      child: Text("See All",
                          style: Theme.of(context).textTheme.headline3)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ProductList.horizontal(
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
