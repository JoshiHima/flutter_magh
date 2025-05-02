import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.g.dart';

part 'meal.freezed.dart';

@freezed
class Meal with _$Meal {


  // @Default is added to enusre that the app does not crash when there is no any string parameter in the api or database
  const factory Meal({
    @Default('') String idMeal,
    @Default('') strMeal,
    @Default('') strMealThumb,
}) = _Meal;


  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}
