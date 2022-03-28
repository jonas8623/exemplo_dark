import 'package:exemplo_dark_mode/model/theme_model.dart';
import 'package:exemplo_dark_mode/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Provider - serve para prover dados para outros widgets
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeModel(),),

        ],
        child: Consumer(
            builder: (context, ThemeModel theme, child) {
              return MaterialApp(
                title: 'Flutter Demo',
                debugShowCheckedModeBanner: false,
                theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),
                home: const HomePage(),
              );
            }
        )
    );
  }
}

