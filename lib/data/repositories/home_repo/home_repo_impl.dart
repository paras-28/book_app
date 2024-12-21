import 'package:dio/dio.dart' as dio;
import 'package:book_app/core/utils/debug_logger.dart';
import 'package:book_app/core/utils/is_list_exist.dart';
import 'package:book_app/data/data_utility/data_utility.dart';
import 'package:book_app/domain/entities/models/book/book_res_model.dart';
import 'package:book_app/domain/repositories/home_repo/home_repo.dart';

import '../../rest_client/dio_base.dart';

class HomeRepoImpl implements HomeRepo
{
  late dio.Dio dioInst;

  HomeRepoImpl(this.dioInst);

  @override
  Future<List<BookResModel>> fetchAllBooks() async {
    // Map<String, String> header = await getHTTPHeader();
    // dio.BaseOptions options = dioInst.options;
    // dioInst.options = options;
    try {

      var response = await DioClient(dioInst)
          .get(url: ApiEndPoints.books, uniqueKey: "fetchAllBooks",);
      List? list = response.data as List?;
      if (isListExist(list)) {
        return List<BookResModel>.from(
            list!.map((x) => BookResModel.fromJson(x)));
      } else {
        return [];
      }
    } on dio.DioException catch (e) {

      throw DioExceptions.fromDioError(
          dioError: e, errorFrom: "fetchAllEvents")
          .errorMessage();
      // if you want to customize the error message
      //  int statusCode =  DioExceptions.fromDioError(dioError: e, errorFrom: "getContentForHomeScreen").errorStatusCode();
      //  if(statusCode == 404)
      //  {
      //    throw "Incorrect Email Password";
      //  }
    } catch (e) {
      rethrow;
    }
  }



}