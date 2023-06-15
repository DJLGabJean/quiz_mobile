import 'package:flutter/material.dart';

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
        title: const Text('QuizWiz', style: TextStyle(color: Colors.white, fontSize: 24), textAlign: TextAlign.center),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, // Aligner les enfants en haut
              children: const [
                BoxQuiz(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxQuiz extends StatelessWidget {
  const BoxQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 121, 191), // Utiliser la couleur hexadécimale spécifiée
        borderRadius: BorderRadius.circular(10),
      ),            
      width: 300,
      height: 100,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Minecraft',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Un phénomène mondial qui a marqué toute une génération de joueurs!.',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
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

          // const Color.fromARGB(255, 0, 121, 191),