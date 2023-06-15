import 'package:flutter/material.dart';
import 'package:quiz_mobile/quizpage.dart';

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

void goToQuizPage() {
  Navigator.pushNamed(context, PageName.quizpage);
}

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
                BoxQuiz(
                  'Minecraft',
                  'Un phénomène mondial qui a marqué toute une génération de joueurs en ligne!',
                  () => goToQuizPage(),
                  ),
                const SizedBox(height: 20), // Ajouter un espace entre les deux boîtes
                BoxQuiz(
                  'Sonic', 
                  'La mascotte de SEGA qui a su révaliser Mario!',
                  () => goToQuizPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxQuiz extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  BoxQuiz(
    this.title,
    this.description,
    this.onTap, 
  );

  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap : onTap,
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
              title,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              description,
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