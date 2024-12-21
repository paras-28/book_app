import 'package:book_app/config/use_cases/use_case.dart';
import 'package:book_app/domain/entities/models/book/book_res_model.dart';
import 'package:book_app/domain/repositories/home_repo/home_repo.dart';

class GetAllBooksUseCase implements UseCase<List<BookResModel>, NoParams> {
  final HomeRepo homeRepo;

  GetAllBooksUseCase({required this.homeRepo});

  @override
  Future<List<BookResModel>> call(NoParams params) async {
    return await homeRepo.fetchAllBooks();
  }
}
