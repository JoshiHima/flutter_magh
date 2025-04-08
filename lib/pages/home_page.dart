import 'package:flutter/material.dart';
import 'package:flutter_magh/pages/widgets/todo_form.dart';
import 'package:flutter_magh/pages/widgets/todo_list.dart';
import 'package:flutter_magh/providers/notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int number = 0;

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        actions: [
          Consumer(
            builder: (context, ref, child){

              final theme_state = ref.watch(themeProvider);

              return IconButton(
              onPressed: (){
                ref.read(themeProvider.notifier).toggle();

              }, icon: Icon(
                theme_state == true ? Icons.light_mode_outlined : Icons.dark_mode_outlined
              )); 

            },
          ),   
        ],
      ),
      body: Scaffold(
        body: ListView(
          children: [
            TodoForm(),
            TodoList(),
          ],
        ),
      )
    );
  }
}
