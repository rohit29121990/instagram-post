import 'package:flutter/material.dart';
import 'package:posts/widgets/user_profile.dart';

import '../utils/my_colors.dart';

class Comments extends StatelessWidget {
  const Comments(
      {super.key,
      required this.userProfile,
      this.step = 1,
      this.child,
      this.actions});

  final int step;
  final Widget? child;
  final Widget? actions;
  final UserProfile userProfile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: step > 1 ? step * 30 : 16, right: 16, top: 16, bottom: 16),
      child: Column(
        children: [
          userProfile,
          Padding(
            padding: EdgeInsets.only(left: step > 1 ? step * 30 : 58),
            child: Text(
              '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'noto',
                color: MyColors.h9,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: step > 1 ? step * 30 : 58),
            child: actions,
          ),
          if (child != null) child!
        ],
      ),
    );
  }
}
