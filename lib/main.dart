import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:web_portfolio/presentation/screens.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://gljpfuyhinrtivfhgfzo.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdsanBmdXloaW5ydGl2ZmhnZnpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjExODAzMjcsImV4cCI6MjAzNjc1NjMyN30.75Io1EhpEB62GhLIOTL2mWi6EpludGPNCgctLlhAs5E',
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
