import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:web_portfolio/config/config.dart';
import 'package:web_portfolio/features/shared/infrastructure/services/open_url.dart';

abstract class ServiceLocator {
  static final GetIt sl = GetIt.instance;

  static Future<void> initialize() async {
    await dotenv.load(fileName: '.env');

    sl.registerSingletonAsync<Supabase>(
      () async => await Supabase.initialize(
        url: Enviroment.envSupabaseDbUrl,
        anonKey: Enviroment.apiKeySupabase,
      ),
    );

    sl.registerSingleton<OpenUrl>(OpenUrl());
  }
}
