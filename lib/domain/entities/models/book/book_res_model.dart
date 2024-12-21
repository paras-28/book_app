import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_res_model.freezed.dart';
part 'book_res_model.g.dart';

@freezed
class BookResModel with _$BookResModel {
  const factory BookResModel(
      {required int? number,
      required String? title,
      required String? originalTitle,
      required String? releaseDate,
      required String? description,
      required int? pages,
      required String? cover,
      required int? index}) = _BookResModel;

  factory BookResModel.fromJson(Map<String, dynamic> json) =>
      _$BookResModelFromJson(json);
}
