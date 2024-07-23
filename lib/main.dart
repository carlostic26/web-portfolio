import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_portfolio/features/home/presentation/screens.dart';
import 'features/home/presentation/providers/providers.dart';
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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Dev.name,
      theme: ref.watch(themeProvider).theme,
      home: const HomePage(),
    );
  }
}
