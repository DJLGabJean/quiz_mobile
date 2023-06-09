import 'package:flutter/material.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // <== définit le thème Light
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        // <== définit le thème Dark
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light, // <== on choisit le Dark
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizWiz', style: TextStyle(color: Colors.white, fontSize: 24)),
        backgroundColor: const Color.fromARGB(206, 237, 66, 100),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/background_mainpage.jpg'),
            fit: BoxFit.contain,
          ),
        ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 121, 191),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  Text(
                    'Contenu de l\'application',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 30, width: 8),
                  Text(
                    'Description du contenu',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



          // decoration: BoxDecoration(
          //   color: Colors.green.withOpacity(0.6),
          //   borderRadius: BorderRadius.circular(10),
          // ),
          // padding: const EdgeInsets.symmetric(
          //   horizontal: 100,
          //   vertical: 70,
          // ),