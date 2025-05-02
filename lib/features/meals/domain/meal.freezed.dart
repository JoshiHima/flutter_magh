// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  String get idMeal => throw _privateConstructorUsedError;
  dynamic get strMeal => throw _privateConstructorUsedError;
  dynamic get strMealThumb => throw _privateConstructorUsedError;

  /// Serializes this Meal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res, Meal>;
  @useResult
  $Res call({String idMeal, dynamic strMeal, dynamic strMealThumb});
}

/// @nodoc
class _$MealCopyWithImpl<$Res, $Val extends Meal>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
  }) {
    return _then(
      _value.copyWith(
            idMeal:
                null == idMeal
                    ? _value.idMeal
                    : idMeal // ignore: cast_nullable_to_non_nullable
                        as String,
            strMeal:
                freezed == strMeal
                    ? _value.strMeal
                    : strMeal // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            strMealThumb:
                freezed == strMealThumb
                    ? _value.strMealThumb
                    : strMealThumb // ignore: cast_nullable_to_non_nullable
                        as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MealImplCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$MealImplCopyWith(
    _$MealImpl value,
    $Res Function(_$MealImpl) then,
  ) = __$$MealImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idMeal, dynamic strMeal, dynamic strMealThumb});
}

/// @nodoc
class __$$MealImplCopyWithImpl<$Res>
    extends _$MealCopyWithImpl<$Res, _$MealImpl>
    implements _$$MealImplCopyWith<$Res> {
  __$$MealImplCopyWithImpl(_$MealImpl _value, $Res Function(_$MealImpl) _then)
    : super(_value, _then);

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMeal = null,
    Object? strMeal = freezed,
    Object? strMealThumb = freezed,
  }) {
    return _then(
      _$MealImpl(
        idMeal:
            null == idMeal
                ? _value.idMeal
                : idMeal // ignore: cast_nullable_to_non_nullable
                    as String,
        strMeal: freezed == strMeal ? _value.strMeal! : strMeal,
        strMealThumb:
            freezed == strMealThumb ? _value.strMealThumb! : strMealThumb,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MealImpl implements _Meal {
  const _$MealImpl({
    this.idMeal = '',
    this.strMeal = '',
    this.strMealThumb = '',
  });

  factory _$MealImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealImplFromJson(json);

  @override
  @JsonKey()
  final String idMeal;
  @override
  @JsonKey()
  final dynamic strMeal;
  @override
  @JsonKey()
  final dynamic strMealThumb;

  @override
  String toString() {
    return 'Meal(idMeal: $idMeal, strMeal: $strMeal, strMealThumb: $strMealThumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealImpl &&
            (identical(other.idMeal, idMeal) || other.idMeal == idMeal) &&
            const DeepCollectionEquality().equals(other.strMeal, strMeal) &&
            const DeepCollectionEquality().equals(
              other.strMealThumb,
              strMealThumb,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    idMeal,
    const DeepCollectionEquality().hash(strMeal),
    const DeepCollectionEquality().hash(strMealThumb),
  );

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      __$$MealImplCopyWithImpl<_$MealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealImplToJson(this);
  }
}

abstract class _Meal implements Meal {
  const factory _Meal({
    final String idMeal,
    final dynamic strMeal,
    final dynamic strMealThumb,
  }) = _$MealImpl;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$MealImpl.fromJson;

  @override
  String get idMeal;
  @override
  dynamic get strMeal;
  @override
  dynamic get strMealThumb;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
