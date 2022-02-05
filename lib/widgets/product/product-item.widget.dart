import 'package:curso_layout/pages/product.page.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;
  late final Material? _horizontal;
  late final Container? _vertical;

  ProductItem.horizontal(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required BuildContext context})
      : super(key: key) {
    _vertical = null;
    _horizontal = Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductPage(
                description: description,
                image: image,
                price: price,
                title: title,
              ),
            ),
          );
        },
        child: Ink(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            width: 170,
            color: Colors.black12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  width: 170,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 60,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                const SizedBox(height: 5),
                Text(description),
                const SizedBox(height: 5),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ProductItem.vertical(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required BuildContext context})
      : super(key: key) {
    _horizontal = null;
    _vertical = Container(
      height: 120,
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(
                  "\$",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 10),
                Container(
                  height: 30,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            alignment: Alignment.center,
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Text("-"),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                        child: Text(
                          "1",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            alignment: Alignment.center,
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Text("+"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return _vertical ?? _horizontal!;
  }
}
