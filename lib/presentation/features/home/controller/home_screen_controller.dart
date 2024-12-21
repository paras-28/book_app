import 'package:book_app/config/use_cases/use_case.dart';
import 'package:book_app/domain/entities/models/book/book_res_model.dart';
import 'package:book_app/presentation/global_singletons/global_singletons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final homepageProvider = AsyncNotifierProvider<MyHomeNotifier, List<BookResModel>>(MyHomeNotifier.new);

class MyHomeNotifier extends AsyncNotifier<List<BookResModel>> {

  @override
  Future<List<BookResModel>> build() async{
    List<BookResModel> list =  await ref.read(getAllBooksUseCaseProvider).call(NoParams());
        return list ;
  }

}


