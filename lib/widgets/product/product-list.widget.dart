import 'package:curso_layout/widgets/product/product-item.widget.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  late final SizedBox? _horizontal;
  late final ListView? _vertical;

  ProductList.horizontal({Key? key, required BuildContext context})
      : super(key: key) {
    _vertical = null;
    _horizontal = SizedBox(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-1.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-2.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-3.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-4.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-5.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-6.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-7.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-8.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-9.png",
            price: 15.68,
            context: context,
          ),
          ProductItem.horizontal(
            title: "Teste",
            description: "Teste",
            image: "assets/imgs/product-10.png",
            price: 15.68,
            context: context,
          ),
        ],
      ),
    );
  }

  ProductList.vertical({Key? key, required BuildContext context})
      : super(key: key) {
    _horizontal = null;
    _vertical = ListView(
      children: [
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-1.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-2.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-3.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-4.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-5.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-6.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-7.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-8.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-9.png",
          price: 15.68,
          context: context,
        ),
        ProductItem.vertical(
          title: "Teste",
          description: "Teste",
          image: "assets/imgs/product-10.png",
          price: 15.68,
          context: context,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //return _vertical == null ? _horizontal! : _vertical!;
    return _vertical ?? _horizontal!;
  }
}
