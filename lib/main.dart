import 'package:flutter/material.dart';
import 'package:flutter_magh/app_theme/app_colors.dart';
import 'package:flutter_magh/providers/notifier_provider.dart';
import 'package:flutter_magh/routes/app_routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main(){

  runApp(ProviderScope(child: Home()));
}

class Home extends ConsumerWidget {


  const Home({super.key});

  @override
  Widget build(BuildContext context, ref) {

  final state = ref.watch(themeProvider);

    return MaterialApp.router(
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: state ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
