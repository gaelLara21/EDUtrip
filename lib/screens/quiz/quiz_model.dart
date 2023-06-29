class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "¿Cuál es el resultado de 2 + 2?",
    [
      Answer("5", false),
      Answer("3", false),
      Answer("4", true),
    ],
  ));

  list.add(Question(
    "¿Cuál de los siguientes es un elemento químico?",
    [
      Answer("Oxigeno", true),
      Answer("Plastico", false),
      Answer("Papel", false),
    ],
  ));

  list.add(Question(
    "¿En qué año comenzó la Segunda Guerra Mundial?",
    [
      Answer("1945", false),
      Answer("1939", true),
    ],
  ));

  list.add(Question(
    "¿Cuál es el país más grande del mundo por área?",
    [
      Answer("Estados Unidos", false),
      Answer("India", false),
      Answer(" Rusia", true),
    ],
  ));

  list.add(Question(
    "¿Quién escribió Don Quijote de la Mancha?",
    [
      Answer("Miguel de Cervantes Saavedra", true),
      Answer("Federico García Lorca", false),
      Answer("Pablo Neruda", false),
    ],
  ));

  list.add(Question(
    "¿Quién pintó la obra La última cena?",
    [
      Answer("Vincent van Gogh", false),
      Answer("Leonardo da Vinci", true),
      Answer("Pablo Picasso", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el idioma oficial de Brasil?",
    [
      Answer("Portugués", true),
      Answer("Español", false),
      Answer("Francés", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el instrumento de viento más pequeño?",
    [
      Answer("Trombón", false),
      Answer("Armónica", true),
      Answer("Tuba", false),
    ],
  ));

  list.add(Question(
    "¿Cuál de los siguientes órganos es parte del sistema respiratorio?",
    [
      Answer("Estómago", false),
      Answer("Pulmones", true),
    ],
  ));

  list.add(Question(
    "¿Cuál es la fórmula para calcular la velocidad?",
    [
      Answer("Velocidad = Distancia / Tiempo", true),
      Answer("Velocidad = Masa x Aceleración", false),
      Answer("Velocidad = Fuerza / Área", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el símbolo químico del oro?",
    [
      Answer("Au", true),
      Answer("Ag", false),
      Answer("O", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el resultado de 5 x 8?",
    [
      Answer("13", false),
      Answer("40", true),
      Answer("56", false),
    ],
  ));

  list.add(Question(
    "¿Cuál es el órgano más grande del cuerpo humano?",
    [
      Answer("El cerebro", false),
      Answer(" La piel", true),
    ],
  ));

  list.add(Question(
    "¿Cuál fue el primer presidente de los Estados Unidos?",
    [
      Answer("Abraham Lincoln", false),
      Answer("George Washington", true),
    ],
  ));

  list.add(Question(
    "¿Cuál es el océano más grande del mundo?",
    [
      Answer("Océano Pacífico", true),
      Answer("Océano Atlántico", false),
      Answer("Océano Índico", false),
    ],
  ));

  list.add(Question(
    "¿Quién escribió Romeo y Julieta?",
    [
      Answer("William Shakespeare", true),
      Answer("Miguel de Cervantes Saavedra", false),
      Answer("Gabriel García Márquez", false),
    ],
  ));

  list.add(Question(
    "¿Quién pintó La Mona Lisa?",
    [
      Answer("Salvador Dalí", false),
      Answer("Claude Monet", false),
      Answer("Leonardo da Vinci", true),
    ],
  ));

  list.add(Question(
    "¿Cuál es el idioma oficial de Japón?",
    [
      Answer("Inglés", false),
      Answer("Chino", false),
      Answer("Japonés", true),
    ],
  ));

  list.add(Question(
    "¿Cuál es el instrumento principal en una orquesta sinfónica?",
    [
      Answer("El violín", true),
      Answer("El clarinete", false),
    ],
  ));

  list.add(Question(
    "¿Cual es el album musical más vendido de la historia?",
    [
      Answer("Thriller - Michael Jackson", true),
      Answer("Back In Black - AC/DC", false),
    ],
  ));

  list.add(Question(
    "¿En qué año se llevó a cabo la Independencia de México?",
    [
      Answer("1810", false),
      Answer("1821", true),
    ],
  ));

  list.add(Question(
    "¿Quién fue el líder de la Revolución Mexicana?",
    [
      Answer("Porfirio Díaz", false),
      Answer("Emiliano Zapata", false),
      Answer("Francisco I Madero", true),
    ],
  ));

  list.add(Question(
    "¿Qué presidente de México promovió la reforma agraria y la educación laica?",
    [
      Answer("Benito Juárez", false),
      Answer("Lázaro Cárdenas", true),
    ],
  ));

  list.add(Question(
    "¿Nombre del movimiento estudiantil que ocurrió en 1968?",
    [
      Answer("Tlatelolco 68", false),
      Answer("Movimiento estudiantil de 1968", true),
    ],
  ));

  list.add(Question(
    "¿Quién fue el último emperador de México durante el Segundo Imperio Mexicano?",
    [
      Answer("Agustín de Iturbide", false),
      Answer("Maximiliano de Habsburgo", true),
    ],
  ));

  list.add(Question(
    "¿Batalla que inicio la Independencia de México?",
    [
      Answer("Batalla del 5 de Mayo", false),
      Answer("Batalla de Puebla", false),
      Answer("Grito de Dolores", true),
    ],
  ));

  list.add(Question(
    "¿Presidente que fue el líder de la Cristiada en México?",
    [
      Answer("Luis Echeverría", false),
      Answer("Plutarco Elías Calles", true),
    ],
  ));

  list.add(Question(
    "¿Candidato presidencial asesinado en 1994?",
    [
      Answer("Luis Donaldo Colosio", true),
      Answer("Carlos Salinas de Gortari", false),
      Answer("Ernesto Zedillo", false),
    ],
  ));

  list.add(Question(
    "¿Quién fue el presidente de México durante la Expropiación Petrolera en 1938?",
    [
      Answer("Lázaro Cárdenas", true),
      Answer("Vicente Fox", false),
    ],
  ));

  list.add(Question(
    "¿El Presidente mas votado en la historia de México?",
    [
      Answer("Miguel de la Madrid", false),
      Answer("Andrés Manuel Lopéz Obrador", true),
    ],
  ));

  return list;
}
