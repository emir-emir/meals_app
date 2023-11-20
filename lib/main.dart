import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/screens/tabs.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue, // arka plan  rengi
            foregroundColor: Colors.white //önplan rengi

            ),
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: const Color.fromARGB(255, 131, 57, 0),
        ),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Poppins', // Kullanmak istediğiniz font
              bodyColor: Colors.black, // Varsayılan metin rengi
              displayColor: Colors.black, // Başlık metin rengi
            ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
home: TabsScreen(),
      // const MealsScreen(title:"Bazı Categoriler...", meals: dummyMealModels ,)
      // CategoriesScreen(),
    );
  }
}
