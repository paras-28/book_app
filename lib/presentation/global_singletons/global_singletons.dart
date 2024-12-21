
import 'package:dio/dio.dart' as dio;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:dio/dio.dart' as dio;

part 'global_singletons.g.dart';


@Riverpod(keepAlive : true)
dio.Dio  dioSingleton(Ref ref)
{
  dio.Dio  dioInst = dio.Dio();
  dioInst.options =
      dio.BaseOptions(
          baseUrl: "https://potterapi-fedeperin.vercel.app/en",
          headers: {'content-type':'application/json'}
        // connectTimeout: const Duration(seconds: 10),
        // sendTimeout: const Duration(seconds: 10)
      );

  return dioInst;
}