

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

part 'todo.g.dart';

@freezed
class Todo with _$Todo {

  const factory Todo({
    required String todo_task,
    required bool isComplete,
    required String id
}) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}