import 'package:curso_layout/widgets/category/category-item.widget.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryItem(image: "assets/imgs/Icon_Devices.png"),
          CategoryItem(image: "assets/imgs/Icon_Gadgets.png"),
          CategoryItem(image: "assets/imgs/Icon_Gaming.png"),
          CategoryItem(image: "assets/imgs/Icon_Mens_Shoe.png"),
          CategoryItem(image: "assets/imgs/Icon_Womens_Shoe.png"),
        ],
      ),
    );
  }
}
