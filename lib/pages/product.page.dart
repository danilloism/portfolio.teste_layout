import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  const ProductPage(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0),
            elevation: 0,
            expandedHeight: 500,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(description),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "NDFASKJDHFJKLASDHFALKJSDFHASJKLDFHASJKLDFFFFFFFFFFFFFFFFFFFFFFFFFNDFASKJDHFJKLASDHFALKJSDFHASJKLDFHASJKLDFFFFFFFFFFFFFFFFFFFFFFFFFNDFASKJDHFJKLASDHFALKJSDFHASJKLDFHASJKLDFFFFFFFFFFFFFFFFFFFFFFFFFNDFASKJDHFJKLASDHFALKJSDFHASJKLDFHASJKLDFFFFFFFFFFFFFFFFFFFFFFFFFNDFASKJDHFJKLASDHFALKJSDFHASJKLDFHASJKLDFFFFFFFFFFFFFFFFFFFFFFFFF"),
            ),
          ],
        ),
      ),
    );
  }
}
