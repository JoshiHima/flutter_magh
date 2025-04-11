import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magh/routes/app_routes.dart';



/// provider , notifier provider, future provider, async notifier provider, stream provider


// void m(){
//   for(int i = 0; i<10000000; i++){
//
//   }
//   print('sello world');
// }

Future<String> getSome(){
  return Future.delayed(Duration(seconds: 2), (){
    print('2 sec gone');
    return 'hello world';
  });
}


void a(){
  print('hello world');
}





void main (){

  getSome();
  a();


runApp(ProviderScope(child: Home()));
}




class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}