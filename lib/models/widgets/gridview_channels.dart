import 'package:flutter/material.dart';

class GridViewItems extends StatelessWidget {
  const GridViewItems(
      {super.key, required this.itemCount, required this.function});
  final Function() function;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 3 Columns
          crossAxisSpacing: 25, //Spacing b/w 2 Columns 10-pixels
          childAspectRatio: 3 / 2 //Spacing b/w rows and columns
          ,
          mainAxisSpacing: 25, //Spacing b/w rows
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: function());
  }
}
