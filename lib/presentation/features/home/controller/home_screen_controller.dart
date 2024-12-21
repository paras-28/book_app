import 'package:book_app/config/global_providers/dio_provider.dart';

import 'package:book_app/domain/entities/models/book/book_res_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final homepageProvider = AsyncNotifierProvider<MyHomeNotifier, List<BookResModel>>(MyHomeNotifier.new);

class MyHomeNotifier extends AsyncNotifier<List<BookResModel>> {

  @override
  Future<List<BookResModel>> build() async{

    List<BookResModel> list =  await ref.read(homeRepoProvider).fetchAllBooks();
        return list ;
  }

}


