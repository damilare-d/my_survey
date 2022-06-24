import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;
  const CategoryHeaderWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: category.backgroundColor,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(height: 12),
            Text(category.categoryName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ],
        ));
  }
}
