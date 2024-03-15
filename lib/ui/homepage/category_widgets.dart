import 'package:flutter/material.dart';
import 'package:local_event/styleguide.dart';
import 'package:local_event/model/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0x99FFFFFF), width: 3),
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            category.icon,
            color: Colors.white,
            size: 40,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            category.name,
            style: categoryTextStyle,
          )
        ],
      ),
    );
  }
}
