import 'package:book_app/domain/use_cases/get_all_books_use_case.dart';
import 'package:book_app/presentation/global_singletons/dio_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_singletons.g.dart';

///////////////// dio
@Riverpod(keepAlive: true)
dio.Dio dioSingleton(Ref ref) {
  dio.Dio dioInst = dio.Dio();
  dioInst.options = dio.BaseOptions(
      baseUrl: "https://potterapi-fedeperin.vercel.app/en",
      headers: {'content-type': 'application/json'}
      // connectTimeout: const Duration(seconds: 10),
      // sendTimeout: const Duration(seconds: 10)
      );

  return dioInst;
}

/////////////// Use case
@Riverpod(keepAlive: true)
GetAllBooksUseCase getAllBooksUseCase(Ref ref) {
  return GetAllBooksUseCase(homeRepo: ref.read(homeRepoProvider));
}

///////////////  Connectivity
final connectivityStreamProvider =
    StreamProvider<List<ConnectivityResult>>((ref) async* {
  yield* Connectivity().onConnectivityChanged;
});
