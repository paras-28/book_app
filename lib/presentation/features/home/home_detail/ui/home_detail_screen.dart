import 'package:book_app/config/routes/app_routes_name.dart';
import 'package:book_app/core/utils/app_strings.dart';
import 'package:book_app/core/utils/responsive_util.dart';
import 'package:book_app/core/utils/text_style_constants.dart';
import 'package:book_app/domain/entities/models/book/book_res_model.dart';
import 'package:book_app/presentation/common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailScreen extends StatelessWidget {
  final BookResModel bookResModel;

  const HomeDetailScreen({super.key, required this.bookResModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: AppStrings.details,
        hasArrow: true,
        onBackPressed: () {
          context.goNamed(AppRoutesName.homeScreen);
        },
      ),
      body: ConnectivityWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Responsive.setWidthByPercentage(100),
            ),
            Hero(
              tag: AppStrings.heroTag + bookResModel.cover.toString(),
              child:  NetworkCacheImage(
                height: Responsive.setHeightByPercentage(40),
                width: double.infinity,
                // width: Responsive.setWidthByPercentage(100),
                // imageUrl:  '',
                imageUrl: bookResModel.cover ?? '',
                boxFit: BoxFit.fill,
                placeholder: (context, image) {
                  return ImagePlaceHolder(
                    imageHeightPercentage: 0.7,
                    imageWidthPercentage: 0.7,
                  );
                },
                errorWidget: (context, image, e) {
                  return ImagePlaceHolder(
                    imageHeightPercentage: 0.7,
                    imageWidthPercentage: 0.7,
                  );
                },

              ),
            ),


            Container(
              width: Responsive.setWidthByPercentage(90),
              alignment: Alignment.topLeft,
              child: Text(
                bookResModel.title ?? '',
                style: AppTextStyle.imageOverlapTitle,
                maxLines: 2,
              ),
            ),
            TextView(
              title: bookResModel.description ?? '',
              style: AppTextStyle.subTitle,
              maxLine: 8,
              overflow: TextOverflow.ellipsis,
              width: Responsive.setWidthByPercentage(90),
            )
          ],
        ),
      ),
    );
  }
}
