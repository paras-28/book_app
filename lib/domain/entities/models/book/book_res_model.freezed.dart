// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookResModel _$BookResModelFromJson(Map<String, dynamic> json) {
  return _BookResModel.fromJson(json);
}

/// @nodoc
mixin _$BookResModel {
  int? get number => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get originalTitle => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  /// Serializes this BookResModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookResModelCopyWith<BookResModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResModelCopyWith<$Res> {
  factory $BookResModelCopyWith(
          BookResModel value, $Res Function(BookResModel) then) =
      _$BookResModelCopyWithImpl<$Res, BookResModel>;
  @useResult
  $Res call(
      {int? number,
      String? title,
      String? originalTitle,
      String? releaseDate,
      String? description,
      int? pages,
      String? cover,
      int? index});
}

/// @nodoc
class _$BookResModelCopyWithImpl<$Res, $Val extends BookResModel>
    implements $BookResModelCopyWith<$Res> {
  _$BookResModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? releaseDate = freezed,
    Object? description = freezed,
    Object? pages = freezed,
    Object? cover = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookResModelImplCopyWith<$Res>
    implements $BookResModelCopyWith<$Res> {
  factory _$$BookResModelImplCopyWith(
          _$BookResModelImpl value, $Res Function(_$BookResModelImpl) then) =
      __$$BookResModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number,
      String? title,
      String? originalTitle,
      String? releaseDate,
      String? description,
      int? pages,
      String? cover,
      int? index});
}

/// @nodoc
class __$$BookResModelImplCopyWithImpl<$Res>
    extends _$BookResModelCopyWithImpl<$Res, _$BookResModelImpl>
    implements _$$BookResModelImplCopyWith<$Res> {
  __$$BookResModelImplCopyWithImpl(
      _$BookResModelImpl _value, $Res Function(_$BookResModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? releaseDate = freezed,
    Object? description = freezed,
    Object? pages = freezed,
    Object? cover = freezed,
    Object? index = freezed,
  }) {
    return _then(_$BookResModelImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookResModelImpl implements _BookResModel {
  const _$BookResModelImpl(
      {required this.number,
      required this.title,
      required this.originalTitle,
      required this.releaseDate,
      required this.description,
      required this.pages,
      required this.cover,
      required this.index});

  factory _$BookResModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookResModelImplFromJson(json);

  @override
  final int? number;
  @override
  final String? title;
  @override
  final String? originalTitle;
  @override
  final String? releaseDate;
  @override
  final String? description;
  @override
  final int? pages;
  @override
  final String? cover;
  @override
  final int? index;

  @override
  String toString() {
    return 'BookResModel(number: $number, title: $title, originalTitle: $originalTitle, releaseDate: $releaseDate, description: $description, pages: $pages, cover: $cover, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookResModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, title, originalTitle,
      releaseDate, description, pages, cover, index);

  /// Create a copy of BookResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookResModelImplCopyWith<_$BookResModelImpl> get copyWith =>
      __$$BookResModelImplCopyWithImpl<_$BookResModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookResModelImplToJson(
      this,
    );
  }
}

abstract class _BookResModel implements BookResModel {
  const factory _BookResModel(
      {required final int? number,
      required final String? title,
      required final String? originalTitle,
      required final String? releaseDate,
      required final String? description,
      required final int? pages,
      required final String? cover,
      required final int? index}) = _$BookResModelImpl;

  factory _BookResModel.fromJson(Map<String, dynamic> json) =
      _$BookResModelImpl.fromJson;

  @override
  int? get number;
  @override
  String? get title;
  @override
  String? get originalTitle;
  @override
  String? get releaseDate;
  @override
  String? get description;
  @override
  int? get pages;
  @override
  String? get cover;
  @override
  int? get index;

  /// Create a copy of BookResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookResModelImplCopyWith<_$BookResModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
