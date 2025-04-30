import 'package:magh/features/todos/data/todos_repository.dart';
import 'package:magh/features/todos/domain/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:magh/features/todos/data/todos_repository.dart';

part 'todo_controller.g.dart';

int todoIndex = 0;
@riverpod
class TodoController extends _$TodoController {

  @override
  FutureOr<List<Todo>> build() async {
    return ref.read(todoRepositoryProvider).getTodos();
  }


  Future<void> addTodo(Map<String, dynamic> todoData) async{

    final value = state.requireValue;

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async{
      final newValue = await ref.read(todoRepositoryProvider).addTodos(todo_data: todoData);
      return [...value, newValue];
    });

    try{
      final todo = await ref.read(todoRepositoryProvider).addTodos(todo_data: todoData);
      state = AsyncData([...state.value!, todo]);
    }catch(err, stack){
      state = AsyncError(err, stack);
    }

  }



  Future<void> removeTodo(String id, int index) async{
    todoIndex = index;
    state = AsyncLoading();
    try{
      final response = await ref.read(todoRepositoryProvider).removeTodos(id: id);
      state = AsyncData([ ...state.value!.where((todo) => todo.id != id)]);
      // ref.invalidateSelf();
      //await future;
    }catch(err, stack){
      state = AsyncError(err, stack);
    }

  }


}