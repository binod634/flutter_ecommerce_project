import 'package:daraj/components/items.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  final List<Items> item = [
    const Items(
      title: "Daddys's Kitchen Butwal",
      branch: "Butwal branch",
    ),
    const Items(title: "Daddys's Kitchen Bhairawa", branch: "Bhairawa branch"),
    const Items(title: "Daddys's Kitchen palpa", branch: "plapa branch"),
  ];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        right: 12,
        left: 12,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
          var items = item[index];
          return Items(title: items.title, branch: items.branch);
        },
      ),
    );
  }
}
