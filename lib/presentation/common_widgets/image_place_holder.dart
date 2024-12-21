import 'package:book_app/core/utils/app_assets.dart';
import 'package:book_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ImagePlaceHolder extends StatelessWidget {
  final double? height;
  final double width;
  final double? imageWidthPercentage;
  final double? imageHeightPercentage;
  final String? imagePath;

  const ImagePlaceHolder(
      {super.key,
      this.height,
      this.width = double.infinity,
      this.imagePath,
      this.imageWidthPercentage = 1,
      this.imageHeightPercentage = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      // color: AppColors.offWhite,
      alignment: Alignment.center,
      child: FractionallySizedBox(
        heightFactor: imageHeightPercentage,
        widthFactor: imageWidthPercentage,
        child: Image.asset(
          imagePath ?? AppAssets.commonImagePlaceHolder,
          fit: BoxFit.fill,
          color: AppColors.greyColor,
        ),
      ),
    );
  }
}
