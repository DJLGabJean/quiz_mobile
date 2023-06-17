// ignore_for_file: file_names
import 'package:quiz_mobile/class/quiz.dart';
import 'package:quiz_mobile/class/question.dart';
import 'package:quiz_mobile/main.dart';

Quiz minecraftQuiz = Quiz(
  'Minecraft',
  'Un phénomène mondial qui a marqué toute une génération de joueurs en ligne!',
  [
    Question(1, 'Quel est le serveur Minecraft le plus connu', 'QCM', ["Hypixel", "2b2t", "Pixelmon Reforged", "Mineplex"]),
    Question(2, "Quel est le nom du boss dans l'Ender", 'RC', ["Enderdragon"]),
    Question(3, "Quel est le thème de la mise à jour Trails & Tales", 'QCM', ["La créativité et l'expression de soi via la représentation et la narration", "L'ajout d'un nouveau biome", "Mise à jour des caves et des falaises", "Mise à jour du Nether"]),
    Question(4, 'Quel est le prénom masculin du personnage principal de Minecraft', 'RC', ["Steve"]),
  ],
  () {
    navigatorKey.currentState?.pushNamed(PageName.quizpage);
  },
);

Quiz sonicQuiz = Quiz(
  'Sonic',
  'La mascotte de SEGA qui a su révaliser Mario!',
  [
    Question(1, 'Quel est la première apparation de Sonic ?', 'QCM', ["Dans un jouet McDonald's", "Dans Rad Mobile", "Dans Sonic The Hedgehog", "Dans Soleil"]),
    Question(2, "Quel est le premier design de Sonic", 'RC', ["Lapin"]),
    Question(3, "Pourquoi Sonic est rapide ?", 'QCM', ["Grâce à ses chaussures", "A cause d'une expérience du Dr Robotnik", "A cause d'un accident", "Sanic"]),
    Question(4, 'En quoi se transforme Sonic dans Sonic Unleashed ?', 'RC', ["Loup-garou", "Hérisson-garou"]),
  ],
  () {
    navigatorKey.currentState?.pushNamed(PageName.quizpage);
  },
);