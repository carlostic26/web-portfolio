import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_portfolio/features/home/presentation/screens.dart';
import 'features/shared/infrastructure/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ServiceLocator.initialize();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
