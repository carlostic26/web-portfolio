import 'package:web_portfolio/presentation/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Dev.name,
      theme: WebThemeData
          .themeData, //TODO: Se debe programar para cambio de tema claro/oscuro controlado por el usuario
      home: const HomePage(),
    );
  }
}
