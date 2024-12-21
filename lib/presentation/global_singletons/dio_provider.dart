import 'package:book_app/data/repositories/home_repo/home_repo_impl.dart';
import 'package:book_app/domain/repositories/home_repo/home_repo.dart';
import 'package:book_app/presentation/global_singletons/global_singletons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final homeRepoProvider = Provider<HomeRepo>((ref) {
  return HomeRepoImpl(ref.read(dioSingletonProvider));
});
