


import 'package:uuid/uuid.dart';

class Todo {
  final String todo;
  final String id;
  final bool isCompleted;

  Todo({
    required this.todo,
    required this.id,
    required this.isCompleted
  });

  //factory constructor

  factory Todo.build(String todo){
    return Todo(todo: todo, isCompleted: false, id: Uuid().v4()); // initially is completed is false beacuse task is never completed as first
  }

  Todo copyWith ({String? todo, bool? isCompleted}){
    return Todo(todo: todo ?? this.todo, id: this.id, isCompleted: isCompleted?? this.isCompleted);
  }
//todo: todo ?? this.todo, yesko matlab if todo ma null value xa vane this.todo (vayekai) instance pass gar
}