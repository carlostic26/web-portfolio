import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:web_portfolio/presentation/screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Dev.envSupabaseDbUrl,
    anonKey: Dev.apiKeySupabase,
  );
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
