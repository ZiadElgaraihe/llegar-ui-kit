import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:llegar/shared/constants/app_colors.dart';

class CustomLikeButton extends StatelessWidget {
  const CustomLikeButton({
    super.key,
    this.isLiked = false,
    this.onLikeTapped,
    this.size,
  });

  final bool isLiked;
  final void Function(bool isLiked)? onLikeTapped;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      isLiked: isLiked,
      onTap: (isLiked) async {
        if (onLikeTapped != null) {
          onLikeTapped!(isLiked);
        }
        return !isLiked;
      },
      likeBuilder: (bool isLiked) {
        return Icon(
          isLiked ? Icons.favorite : Icons.favorite_border_outlined,
          color: isLiked ? AppColors.red : AppColors.white,
          size: size ?? 32,
        );
      },
    );
  }
}
