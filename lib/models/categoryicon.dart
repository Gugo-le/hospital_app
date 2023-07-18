import 'package:flutter/material.dart';
import 'package:hospital/models/category.dart';

class CategoryIcon extends StatelessWidget {
  Color color;
  String iconName;
  double size;

  CategoryIcon({required this.color, required this.iconName, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Colors.grey[500],
        padding: const EdgeInsets.all(10),
        child: const Icon(
          Icons.local_hospital,
          size: 30,
        ),
      ),
    );
  }
}
