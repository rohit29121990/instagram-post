import 'package:flutter/material.dart';

import '../utils/my_colors.dart';

class BookMarkButton extends StatelessWidget {
  const BookMarkButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Icon(
        Icons.bookmark_outline,
        color: MyColors.h4,
        size: 28,
      ),
    );
  }
}
