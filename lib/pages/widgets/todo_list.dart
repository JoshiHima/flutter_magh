import 'package:flutter/material.dart';
import 'package:flutter_magh/models/todo.dart';
import 'package:flutter_magh/providers/notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, ref) {

  final todoList = ref.watch(todoProvider);  //notifier provider ko build function ma j return garxa tyo todoList ma basxa 

    return ListView.separated(
      shrinkWrap: true,  
      itemBuilder: (context, index){
        final data = todoList[index];
        return ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          title: Text(data.todo),
          subtitle: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Is Completed'),
            value: data.isCompleted,  //giving boolean value 
            onChanged: (val){
                ref.read(todoProvider.notifier).updateTodoCompleted(data.id); //j ma click garyo tesko id pass hunxa
            }
            ),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return TodoEdit(todo: data);
                  });
                  
                }, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text('Are you sure?'),
                      actions: [
                        TextButton(onPressed: (){
                          context.pop();
                          }, child: Text('No')),
                          TextButton(onPressed: (){
                            ref.read(todoProvider.notifier).removeTodo(data.id);
                            context.pop(); // removes te todo
                          }, child: Text('Yes'))
                      ],
                    );
                  });
                  
                }, icon: Icon(Icons.delete)),
              ],
            ),
          ),
        );
      },
       separatorBuilder: (context, index) => Divider(),
        itemCount: todoList.length
    );
  }
}



class TodoEdit extends StatefulWidget {
  final Todo todo;
  const TodoEdit({super.key, required this.todo});

  @override
  State<TodoEdit> createState() => _TodoEditState();
}

class _TodoEditState extends State<TodoEdit> {

  final todoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) => AlertDialog(
        title: TextFormField(
          controller: todoController..text = widget.todo.todo,  //statful vayeko kaaran le widget.todo.todo garnu paryo instance line bela
        ),
        actions: [
          TextButton(onPressed: (){
            context.pop();
          }, child: Text('Cancel')),
          TextButton(onPressed: (){
            context.pop();
            ref.read(todoProvider.notifier).updateTodo(widget.todo.id, todoController.text); // updating the todo by passing id and text in text controller
          }, child: Text('Update')),
        ],
      ),
    );
  }
}