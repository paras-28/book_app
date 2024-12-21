import 'package:book_app/domain/entities/models/book/book_res_model.dart';

abstract class HomeRepo {
  Future<List<BookResModel>> fetchAllBooks();
}
