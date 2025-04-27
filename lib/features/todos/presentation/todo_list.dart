import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/todos/presentation/controllers/todo_controller.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoState = ref.watch(todoControllerProvider);


    /*upto 3 seconds the state is AsyncLoading<String>
    => isLoading: true,
    isRefreshing: false,
    isReloading: false,
    hasValue: false
    hasError: false
    value: null
    error: null


    after 3 seconds the state is AsyncData<String>
    => isLoading: false,
    isRefreshing: false,
    isReloading: false,
    hasValue: true
    hasError: false
    value: 'data response'
    error: null

    */




      print('${todoState} isLoading: ${todoState.isLoading}');
      print('${todoState} isRefreshing: ${todoState.isRefreshing}');
      print('${todoState} isReloading: ${todoState.isReloading}');
      print('${todoState} hasValue: ${todoState.hasValue}');
      print('${todoState} hasError: ${todoState.hasError}');
      print('${todoState} value: ${todoState.value}');
      print('${todoState} error: ${todoState.error}');

      print('==============================================');


    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: todoState.when(
          skipLoadingOnReload: true,
          data: (data){
        return ListView.separated(itemBuilder: (context, index){
          final todo = data[index];
          return ListTile(
            title: Text(todo.todo_task),
            trailing: IconButton(onPressed: (){
              ref.read(todoControllerProvider.notifier).removeTodo(todo.id);
            }, icon: Icon(Icons.delete)),
          );
        },
            separatorBuilder: (context, index){
                return Divider();
            },
            itemCount: data.length
        );
      },
          error: (err, st) => Text('$err '),
          loading: () => Center(child: CircularProgressIndicator())),
    );
  }
}
