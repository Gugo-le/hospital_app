import 'package:flutter/material.dart';
import '../helpers/appcolors.dart';

class MapUserBadge extends StatelessWidget {
  final bool isSelected;

  MapUserBadge({required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.MAIN_COLOR : Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                image: AssetImage('assets/img/drug.png'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: isSelected ? Colors.white : AppColors.MAIN_COLOR,
                width: 1,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              children: [
                Text(
                  '삼성제일소아청소년과의원',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.grey,
                  ),
                ),
                Text(
                  'My Location',
                  style: TextStyle(
                    color: isSelected ? Colors.white : AppColors.MAIN_COLOR,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.location_pin,
            color: AppColors.MAIN_COLOR,
            size: 40,
          ),
        ],
      ),
    );
  }
}
