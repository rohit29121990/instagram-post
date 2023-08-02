import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class CommentButton extends StatelessWidget {
  const CommentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        children: [
          Image.asset('assets/icons/comment.png'),
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
