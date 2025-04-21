

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/recipes/domain/recipe.dart';
import 'package:magh/features/shared/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recipe_repository.g.dart';


class RecipeRepository{

 final Dio dio; //later we watch the instance from client provider
 RecipeRepository(this.dio);

 Future<List<Recipe>> getRecipes() async{

   try{
     final response = await dio.get('https://dummyjson.com/recipes');

     return (response.data['recipes'] as List).map((recipe){
       return Recipe.fromJson(recipe);
     }).toList();
   }catch(err){
     throw 'Something went wrong';
   }
 }

}

@riverpod
RecipeRepository recipeRepository(Ref ref) {
  return RecipeRepository(ref.watch(clientProvider)); // watching the client provider to get the instance
}