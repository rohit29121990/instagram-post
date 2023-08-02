import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class InviteButton extends StatelessWidget {
  const InviteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.a3, borderRadius: BorderRadius.circular(999)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Text(
        '팔로우',
        style: TextStyle(color: MyColors.a2),
      ),
    );
  }
}
