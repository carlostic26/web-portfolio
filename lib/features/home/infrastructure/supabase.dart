import 'dart:convert';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:web_portfolio/features/shared/infrastructure/utils/project_utils.dart';

Future<List<ProjectUtils>> bringProjectDone() async {
  final data = await Supabase.instance.client.from('projects').select();
  print(json.encode(data));
  return projectUtilsFromJson(json.encode(data));
}
