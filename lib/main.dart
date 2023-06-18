import 'package:flutter/material.dart';
import 'package:quiz_mobile/routes/quizPage.dart';
import 'package:quiz_mobile/widgets/mainPage.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // <== définit le thème Light
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        // <== définit le thème Dark
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light, // <== on choisit le Dark
      initialRoute: PageName.home,
      routes: {
      PageName.home: (context) => const HomePage(),
      PageName.quizpage: (context) => QuizPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 @override
  Widget build(BuildContext context) {
    return const MainPage(fondEcran: DecorationImage(
      image: AssetImage('assets/images/fondEcran.jpg'),
      fit: BoxFit.cover,
    ));
  }
}

class PageName {
 static const String home = '/';
 static const String quizpage = '/quizpage';
}


