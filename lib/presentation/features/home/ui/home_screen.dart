import 'package:book_app/config/routes/routes.dart';
import 'package:book_app/core/utils/utils.dart';
import 'package:book_app/data/data_utility/exceptions_string_constants.dart';
import 'package:book_app/domain/entities/models/book/book_res_model.dart';
import 'package:book_app/presentation/common_widgets/common_widgets.dart';
import 'package:book_app/presentation/features/home/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homePageStateNotifier = ref.watch(homepageProvider);

    return Scaffold(
      appBar: const CustomAppbar(
        title: AppStrings.bookApp,
        hasArrow: false,
      ),
      body: ConnectivityWrapper(
        child: Center(
          child: homePageStateNotifier.when(
              data: (final valueOrNull) => valueOrNull.isEmpty
                  ? const ErrorView(
                      message: ExceptionStrings.noDataAvailable,
                    )
                  : Center(
                      child: SizedBox(
                        width: Responsive.setWidthByPercentage(90),
                        child: ListView.separated(
                            padding: EdgeInsets.zero,
                            separatorBuilder: (context, index) {
                              return Divider();
                            },
                            itemCount:
                                homePageStateNotifier.valueOrNull!.length,
                            itemBuilder: (BuildContext context, int index) {
                              BookResModel bookResModel =
                                  homePageStateNotifier.valueOrNull![index];
                              return _ItemView(
                                bookResModel: bookResModel,
                                index: index + 1,
                              );
                            }),
                      ),
                    ),
              error: (e, s) => ErrorView(message: e.toString()),
              loading: () => const CustomLoader()),
        ),
      ),
    );
  }
}

class _ItemView extends StatelessWidget {
  final BookResModel bookResModel;
  final int index;

  const _ItemView({super.key, required this.bookResModel, required this.index});

  @override
  Widget build(BuildContext context) {
    Responsive.size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          context.goNamed(AppRoutesName.homeDetail,
              extra: {AppRouteStringConstant.bookResponseModel: bookResModel});
        },
        child: Row(
          children: [
            TextView(
              title: index.toString(),
              style: AppTextStyle.imageTitle,
              margin: EdgeInsets.only(right: 8),
            ),
            Hero(
              tag: AppStrings.heroTag + bookResModel.cover.toString(),
              child: NetworkCacheImage(
                height: Responsive.setHeightByPercentage(15),
                width: Responsive.setWidthByPercentage(24),
                imageUrl: bookResModel.cover ?? '',
                boxFit: BoxFit.fill,
                placeholder: (context, image) {
                  return ImagePlaceHolder(
                    imagePath: AppAssets.bookPlaceHolder,
                    imageHeightPercentage: 0.7,
                    imageWidthPercentage: 0.7,
                  );
                },
                errorWidget: (context, image, e) {
                  return ImagePlaceHolder(
                    imagePath: AppAssets.bookPlaceHolder,
                    imageHeightPercentage: 0.7,
                    imageWidthPercentage: 0.7,
                  );
                },
                margin: EdgeInsets.only(right: 12),
              ),
            ),
            Expanded(
              child: LayoutBuilder(builder: (context, constraint) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookResModel.title ?? '',
                      style: AppTextStyle.imageTitle,
                      maxLines: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: SizedBox(
                        width: Responsive.setWidthByPercentageOFThisWidth(
                            percent: 70, width: constraint.maxWidth),
                        child: Text(
                          bookResModel.description ?? '',
                          style: AppTextStyle.subTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
