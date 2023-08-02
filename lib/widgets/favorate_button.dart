import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class FavorateButton extends StatelessWidget {
  const FavorateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        children: [
          Icon(
            Icons.favorite_outline,
            color: MyColors.h4,
            size: 28,
          ),
          const SizedBox(width: 4),
          Text(
            '5',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: MyColors.h4),
          )
        ],
      ),
    );
  }
}
