import 'package:curso_layout/widgets/product/product-list.widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ProductList.vertical(context: context),
          ),
          Container(
            color: Colors.black12,
            height: 80,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "TOTAL",
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "\$",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: 175,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Comprar"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
