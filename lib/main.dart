import 'package:flutter/material.dart';
import 'package:quiz_mobile/controller/quizList.dart';
import 'package:quiz_mobile/routes/quizPage.dart';
import 'package:quiz_mobile/widgets/boxQuiz.dart';

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

class PageName {
 static const String home = '/';
 static const String quizpage = '/quizpage';
}
