
import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refactor'),
      ),

      body: Column(
        children: [
          _buildListTile('hi one', Icons.access_alarm_outlined),
          _buildListTile('hi two', Icons.skateboarding),
          _buildListTile('hi three', Icons.account_tree),
        ],
      ),
    );
  }

  //refactor the widget
  ListTile _buildListTile(String label, IconData icon) {
    return ListTile(
          leading: Icon(icon),
          title: Text(label),
          trailing: Icon(Icons.add),
        );
  }
}





















// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:magh/features/recipes/presentation/controllers/recipe_controller.dart';
//
// class Recipes extends ConsumerWidget {
//   const Recipes({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//
//     final recipeState = ref.watch(getRecipesProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Recipes'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: recipeState.when(data: (data){
//           return GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                 mainAxisExtent: 150,
//                 crossAxisSpacing: 20,
//               ),
//               itemCount: data.length, //put count here
//               itemBuilder: (context, index){
//                 final recipe = data[index];
//
//                 return Column(
//                   children: [
//                     Text(recipe.cuisine),
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                         child: CachedNetworkImage(imageUrl: recipe.image, fit: BoxFit.cover)
//                     ),
//                   ],
//                 );
//               }
//           );
//         },
//             error: (err, st) => Text('$err'),
//             loading: () => Center(child: CircularProgressIndicator()),
//         ),
//       ),
//     );
//   }
// }
