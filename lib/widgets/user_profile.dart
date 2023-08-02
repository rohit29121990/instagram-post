import 'package:flutter/material.dart';

import '../utils/my_colors.dart';
import '../utils/my_constents.dart';
import 'invite_button.dart';
import 'more.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    this.profileImageUrl,
    this.name,
    this.height,
    this.weight,
    this.inviteButton = false,
    this.more = false,
    this.verified = false,
  });

  final String? profileImageUrl;

  final String? height;
  final String? weight;
  final String? name;
  final bool inviteButton;
  final bool more;
  final bool verified;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: profileImageUrl != null
          ? CircleAvatar(
              backgroundColor: MyColors.a1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(profileImageUrl!),
              ),
            )
          : null,
      title: Row(
        children: [
          if (name != null)
            if (name != null)
              Text(
                name!,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'noto',
                  fontWeight: FontWeight.w700,
                ),
              ),
          if (verified)
            Padding(
              padding: const EdgeInsets.all(commonPadding) / 4,
              child: CircleAvatar(
                backgroundColor: MyColors.a3,
                radius: 12,
                child: Icon(
                  Icons.done,
                  size: 18,
                  color: MyColors.a2,
                ),
              ),
            ),
          Text(
            '1일전',
            style: TextStyle(
              fontSize: 14,
              color: MyColors.a4,
              fontFamily: 'noto',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      subtitle: (height != null && weight != null)
          ? Text(
              '${height ?? ''} ${height != null ? '•' : ''} ${weight ?? ''}',
              style: TextStyle(
                fontSize: 14,
                color: MyColors.a4,
                fontFamily: 'noto',
                fontWeight: FontWeight.w400,
              ),
            )
          : null,
      trailing: inviteButton ? const InviteButton() : const More(),
    );
  }
}
