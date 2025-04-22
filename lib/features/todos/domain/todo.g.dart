// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
  todo_task: json['todo_task'] as String,
  isComplete: json['isComplete'] as bool,
  id: json['id'] as String,
);

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'todo_task': instance.todo_task,
      'isComplete': instance.isComplete,
      'id': instance.id,
    };
