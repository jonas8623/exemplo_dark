import 'package:exemplo_dark_mode/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, ThemeModel theme, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(theme.isDark ? 'Theme Dark' : 'Theme Light'),
              actions: [
                IconButton(
                  onPressed: () => _onPressed(theme),
                  icon: Icon(
                      theme.isDark ? Icons.wb_sunny : Icons.dark_mode),),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                      theme.isDark
                          ? 'Theme Dark'
                          : 'Theme Light',
                    style: TextStyle(
                      fontSize: 36,
                      color: theme.isDark ? Colors.white : Colors.blueAccent,
                      letterSpacing: 1.4,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow> [
                        theme.isDark
                            ? const Shadow(color: Colors.grey, blurRadius: 4.6, offset: Offset(4.0, 4.0))
                            : const Shadow(color: Colors.black45, blurRadius: 4.6, offset: Offset(4.0, 4.0))
                      ]
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

  _onPressed(ThemeModel theme) {
    theme.isDark
        ? theme.isDark = false
        : theme.isDark = true;
  }
}
