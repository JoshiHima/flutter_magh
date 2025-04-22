
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:magh/core/constants/apis.dart';
import 'package:magh/features/todos/domain/todo.dart';

class TodosRepository{

  final Dio client;
  TodosRepository(this.client);

  Future<List<Todo>> getTodos() async{

    try{
      final response = await client.get(todoApi);

      return (response.data as List).map((todo){
        return Todo.fromJson(todo);
      }).toList();

    }catch(err){
      throw 'Something went wrong';
    }


  }

  Future<void> addTodos() async{

    try{
      final response = await client.get(todoApi);



    }catch(err){
      throw 'Something went wrong';
    }


  }

  Future<void> updateTodos() async{

    try{
      final response = await client.get(todoApi);


    }catch(err){
      throw 'Something went wrong';
    }


  }

  Future<void> removeTodos() async{

    try{
      final response = await client.get(todoApi);


    }catch(err){
      throw 'Something went wrong';
    }


  }



}