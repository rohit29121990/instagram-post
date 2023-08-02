import 'package:flutter/material.dart';
import 'package:posts/utils/my_constents.dart';

import '../utils/my_colors.dart';

class MyChips extends StatelessWidget {
  const MyChips(
      {super.key, required this.title, this.isSelected = false, this.onTap});
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
            right: 12, top: commonPadding / 4, bottom: commonPadding / 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
            color: isSelected ? MyColors.a3 : MyColors.a7,
            border: Border.all(color: MyColors.a6),
            borderRadius: BorderRadius.circular(999)),
        child: Text(
          '#$title',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isSelected ? MyColors.a2 : MyColors.a5),
        ),
      ),
    );
  }
}
