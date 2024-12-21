import 'package:book_app/core/utils/app_assets.dart';
import 'package:book_app/core/utils/app_strings.dart';
import 'package:book_app/core/utils/responsive_util.dart';
import 'package:book_app/presentation/common_widgets/text_view.dart';
import 'package:flutter/material.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.noInternet,
          height: Responsive.setWidth(180),
          width: Responsive.setWidth(180),
          fit: BoxFit.fill,
        ),
        TextView(
          margin: EdgeInsets.only(top: size.height * 0.04),
          title: AppStrings.noInternetConnection,
          fontSize: 18,
          // fontFamily: getAppConfig().appFontResource.bold,
        ),
      ],
    ));
  }
}
