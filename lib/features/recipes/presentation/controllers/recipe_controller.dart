import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/recipes/data/recipe_repository.dart';
import 'package:magh/features/recipes/domain/recipe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

 part 'recipe_controller.g.dart';
 

@riverpod
Future<List<Recipe>> getRecipes (Ref ref) async {


  ref.keepAlive(); // if i come back to that page the state remains the same, or the data does not change

  ref.onDispose((){ // this is used when we change the page from another, the provider is cleared
    print('Disposed');
  });

  return ref.read(recipeRepositoryProvider).getRecipes(); // calling function from the provider like this
}
