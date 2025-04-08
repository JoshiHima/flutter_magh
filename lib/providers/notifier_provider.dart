//locally sate management ko laahi notifer provider ko use hunxa


import 'dart:ffi';

import 'package:flutter_magh/models/todo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoProvider extends Notifier<List<Todo>>{  //Todo ko instance ko list
  //dekhaaune type chai list of todo, jasko factory constructor banaayeko

  @override
  List<Todo> build() {
    // TODO: implement build
    return [Todo.build('hello jee')];
  }

  void addTodo(String todo){
    state = [...state, Todo.build(todo)]; // purano state ko value ma naya add gareko,
                                          // Todo.build le hamilai Todo ko instance dinxa 
  }


  void updateTodoCompleted(String id){

    state = [
      for(final todo in state) todo.id == id? todo.copyWith(isCompleted: !todo.isCompleted): todo
    ];

    //array ma for in loop lagaaune, if tya vayeko instance ko id and maile pathaako id equal vayo vane typ instance ko isCompleted ko value lai opposite hune vayo.

  }

   void updateTodo(String id, String label){  //label vaneko edit thiche paxi ko aaune string pass garne

    state = [
      for(final todo in state) todo.id == id? todo.copyWith(todo: label): todo
    ];

    //array ma for in loop lagaaune, if tya vayeko instance ko id and maile pathaako id equal vayo vane typ instance ko isCompleted ko value lai opposite hune vayo.

  }

void removeTodo(String id){
  state = state.where((todo) => todo.id !=id).toList(); 
  // remove hune todo chai aaudaina, baaki todo haru dekhinxa
}


}

class ChangeThemeProvider extends Notifier<bool>{
  @override
  bool build() {
    // TODO: implement build
    return false;
  }




  void toggle(){
    state = !state;
  }
}

final themeProvider = NotifierProvider<ChangeThemeProvider, bool>(() => ChangeThemeProvider());


// notifier provider banaaune, jun class baata notifer provider banaaune ho, tyo class ko instance pass garne
final todoProvider = NotifierProvider<TodoProvider, List<Todo>>(() => TodoProvider());