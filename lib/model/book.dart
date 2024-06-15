class Book {
  String title;
  String authors;
  int year;
  String description;
  String imageURILl;

  Book({
    required this.title,
    required this.authors,
    required this.year,
    required this.description,
    required this.imageURILl,
  });
}

List<Book> booklist = [
  Book(
      title: "Flutter Cookbook - Second Edition",
      authors: " Simone Alessandria",
      year: 2023,
      description: """Write, test and publish your web, desktop, and embedded apps with this most up-to-date book on Flutter using the Dart programming language.
      """,
      imageURILl:
          "https://m.media-amazon.com/images/I/61lyfGFQTbL._SL1360_.jpg"),
  Book(
      title: "Cross-Platform UIs with Flutter",
      authors: " Ryan Edge",
      year: 2022,
      description: """Build a variety of dynamic projects and beautiful UIs as you explore the power of Flutter for the web, desktop, and mobile
      """,
      imageURILl:
          "https://m.media-amazon.com/images/I/61D5HepTLeL._SL1360_.jpg"),
  Book(
      title: "Flutter For Beginners",
      authors: " Edward Thornton",
      year: 2020,
      description: """Edward Thornton’s Flutter for Beginners is what you really need to excel in the learning of this Framework.
      """,
      imageURILl:
          "https://m.media-amazon.com/images/I/61CPRKJi+IL._SL1500_.jpg"),
  Book(
      title: "Flutter and Dart Cookbook",
      authors: "Richard Rose",
      year: 2023,
      description: """Learn the essentials of working with Flutter and Dart to build full stack applications that meet the needs of a cloud-driven world. Together, the Flutter open source UI software development kit and the Dart programming language for client development provide a unified solution to building applications capable of targeting multiple platforms. Recipes in this cookbook show you how this potent combination provides an efficient approach to application development.
Typically used in frontend development, Flutter helps you develop cross-platform applications for Android, iOS, Linux, Mac, Windows, and the Google Fuchsia operating  systems. The Dart SDK provides native access to third-party solutions, including APIs, databases, and authentication. When used in concert with Flutter, Dart allows you to  compile source code ahead of time to native code.
      """,
      imageURILl:
          "https://m.media-amazon.com/images/I/91G9B8E7xlL._SL1500_.jpg"),
  Book(
      title: "Flutter Engineering",
      authors: "Majid Hajian",
      year: 2024,
      description: """
Become a Flutter professional using tactics explained from a software engineer's perspective.
      """,
      imageURILl:
          "https://m.media-amazon.com/images/I/61ul0DfcYXL._SL1422_.jpg"),
  Book(
      title: "Flutter Apprentice (Fourth Edition)",
      authors: " Kevin D Moore",
      year: 2024,
      description: 
      """Build your Apps With Flutter!
Flutter is an exciting development toolkit that lets you build apps for iOS, Android and even web and desktop, 
all from a single codebase.
      """,
      imageURILl: "https://m.media-amazon.com/images/I/61+9xPhx6qL._SL1233_.jpg"),
];
