import 'package:flutter/material.dart';
import 'package:quiz_mobile/class/quiz.dart';
import 'package:quiz_mobile/models/quizList.dart';
import 'package:quiz_mobile/quizpage.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
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
      PageName.quizpage: (context) => const QuizPage(),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizWiz', style: TextStyle(color: Colors.white, fontSize: 24)),
        backgroundColor: const Color.fromARGB(206, 237, 66, 100),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/background_mainpage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(bottom: 20), // Ajouter une marge supérieure
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, // Aligner les enfants en haut
              children: [
                BoxQuiz(minecraftQuiz),
                const SizedBox(height: 20),
                BoxQuiz(sonicQuiz)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxQuiz extends StatelessWidget {
  final Quiz quiz;
  
  const BoxQuiz(
    this.quiz, 
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap : quiz.onTap,
      child : Container(
        decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 121, 191), // Utiliser la couleur hexadécimale spécifiée
        borderRadius: BorderRadius.circular(10),
        ),            
        width: 300,
        height: 100,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              quiz.title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              quiz.description,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class PageName {
 static const String home = '/';
 static const String quizpage = '/quizpage';
}
