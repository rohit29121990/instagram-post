import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:posts/widgets/my_chips.dart';

import '../utils/my_colors.dart';
import '../utils/my_constents.dart';
import 'bookmark_button.dart';
import 'comment_button.dart';
import 'comments.dart';
import 'favorate_button.dart';
import 'user_profile.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    this.hashes,
    this.imageUrl,
    this.profileImageUrl,
    this.title,
    this.disc,
    this.name,
    this.height,
    this.weight,
  });
  final List? hashes;
  final String? imageUrl;
  final String? profileImageUrl;
  final String? title;
  final String? disc;
  final String? name;
  final String? height;
  final String? weight;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          UserProfile(
            verified: true,
            height: height,
            name: name,
            profileImageUrl: profileImageUrl,
            weight: weight,
            inviteButton: true,
          ),
          if (title != null)
            Text(
              title!,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'noto',
                fontWeight: FontWeight.w700,
              ),
            ),
          const SizedBox(height: commonPadding),
          if (disc != null)
            Text(
              disc!,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'noto',
                color: MyColors.h9,
                fontWeight: FontWeight.w700,
              ),
            ),
          if (hashes != null)
            Wrap(
              children: [
                ...hashes!
                    .map(
                      (e) => MyChips(
                        title: e,
                      ),
                    )
                    .toList()
              ],
            ),
        ]),
      ),
      if (imageUrl != null)
        ImageSlideshow(
          width: double.infinity,
          height: 500,
          initialPage: 0,
          indicatorColor: MyColors.background,
          indicatorBackgroundColor: Colors.grey,
          autoPlayInterval: 4000,
          isLoop: true,
          children: [1, 1, 1, 1, 1, 1, 1]
              .map(
                (e) => Image.asset(
                  imageUrl!,
                  fit: BoxFit.cover,
                ),
              )
              .toList(),
        ),
      Padding(
        padding: const EdgeInsets.all(commonPadding / 2),
        child: Row(children: [
          const FavorateButton(),
          const CommentButton(),
          const BookMarkButton(),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(Icons.more_horiz, color: MyColors.h4),
          )
        ]),
      ),
      Comments(
        userProfile: UserProfile(
          verified: true,
          name: name,
          profileImageUrl: profileImageUrl,
        ),
        actions: Row(
          children: const [
            FavorateButton(),
            CommentButton(),
          ],
        ),
        step: 1,
        child: Comments(
          userProfile: const UserProfile(
            name: 'ㅇㅅㅇ',
            profileImageUrl: 'assets/images/profile_img2.png',
          ),
          step: 2,
          actions: Row(
            children: const [
              FavorateButton(),
            ],
          ),
        ),
      )
    ]);
  }
}
