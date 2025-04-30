
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data.g.dart';

part 'category_data.freezed.dart';


@freezed
class CategoryData with _$CategoryData {
  const factory CategoryData({
    required String idCategory,
    required String strCategory,
    required String strCategoryThumb,
    required String strCategoryDescription

}) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) => _$CategoryDataFromJson(json);
}
