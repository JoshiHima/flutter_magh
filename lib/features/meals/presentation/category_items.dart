import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/features/meals/presentation/controllers/meal_controller.dart';


class CategoryItems extends ConsumerWidget {

  final String category;
  const CategoryItems({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final mealState = ref.watch(getMealItemsProvider(category: category)); // watching the provider

    return Scaffold(
      appBar: AppBar(
        title: Text(category),  // yo category app routes ma extra ma aayeko xa
      ),

      body: mealState.when(
          data: (data){
            return ListView.separated(
                itemBuilder: (context, index){
                  final meal = data[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(meal.strMealThumb),
                    ),
                    title: Text(meal.strMeal),
                  );
                },
                separatorBuilder: (context, index){
                  return Divider();
                },
                itemCount: data.length
            );
          },
          error: (err, st){
            return Text(err.toString());
          },
          loading: () => Center(child: CircularProgressIndicator())),
    );
  }
}