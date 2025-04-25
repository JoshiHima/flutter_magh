
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:magh/core/constants/apis.dart';
import 'package:magh/features/todos/domain/todo.dart';

class TodosRepository{

  final Dio client;
  TodosRepository(this.client);

  Future<List<Todo>> getTodos() async{

    try{
      final response = await client.get(todosApi);

      return (response.data as List).map((todo){
        return Todo.fromJson(todo);
      }).toList();

    }catch(err){
      throw 'Something went wrong';
    }


  }

  Future<void> addTodos({required Map<String, dynamic> todo_data}) async{

    try{
      final response = await client.post(todosApi, data: todo_data); // post method to add data
    }catch(err){
      throw 'Something went wrong';
    }


  }

  Future<void> updateTodos({required String id, required Map<String, dynamic> todoData}) async{

    try{
      final response = await client.patch('$todosApi/$id', data: todoData);

    }catch(err){
      throw 'Something went wrong';
    }
  }

  Future<void> removeTodos({required String id}) async{

    try{
      final response = await client.delete('$todosApi/$id'); // we dont need data because khalli remove maatra garne ho, edit or create agrne haina

    }catch(err){
      throw 'Something went wrong';
    }


  }



}