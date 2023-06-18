// ignore_for_file: file_names
import 'package:quiz_mobile/class/quiz.dart';
import 'package:quiz_mobile/class/question.dart';
import 'package:quiz_mobile/class/response.dart';

Quiz minecraftQuiz = Quiz(
  'Minecraft',
  'Un phénomène mondial qui a marqué toute une génération de joueurs en ligne!',
  [
    Question(1, 'Quel est le serveur Minecraft le plus connu', 'QCM', [Response("Hypixel", false), Response("2b2t", true), Response("Pixelmon Reforged", false), Response("Mineplex", false)]),
    Question(2, "Quel est le nom du boss dans l'Ender", 'RC', [Response("Enderdragon", true)]),
    Question(3, "Quel est le thème de la mise à jour Trails & Tales", 'QCM', [Response("La créativité et l'expression de soi via la représentation et la narration", true), Response("L'ajout d'un nouveau biome", false), Response("Mise à jour des caves et des falaises", false), Response("Mise à jour du Nether", false)]),
    Question(4, 'Quel est le prénom masculin du personnage principal de Minecraft', 'RC', [Response("Steve", true)]),
  ],
);

Quiz sonicQuiz = Quiz(
  'Sonic',
  'La mascotte de SEGA qui a su révaliser Mario!',
  [
    Question(1, 'Quel est la première apparation de Sonic ?', 'QCM', [Response("Dans un jouet McDonald's", false), Response("Dans Rad Mobile", true), Response("Dans Sonic The Hedgehog", false), Response("Dans Soleil", false)]),
    Question(2, "Quel est le premier design de Sonic", 'RC', [Response("Lapin", true)]),
    Question(3, "Pourquoi Sonic est rapide ?", 'QCM', [Response("Grâce à ses chaussures", false), Response("A cause d'une expérience du Dr Robotnik", true), Response("A cause d'un accident", false), Response("Sanic", false)]),
    Question(4, 'En quoi se transforme Sonic dans Sonic Unleashed ?', 'RC', [Response("Loup-garou", true), Response("Hérisson-garou", true)]),
  ],
);