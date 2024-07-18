import 'dart:convert';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:web_portfolio/domain/project_utils.dart';

Future <List<ProjectUtils>> bringProjectDone()async{
final data= await Supabase.instance.client.from('proyectos').select();
print(json.encode(data));
return projectUtilsFromJson(json.encode(data));
}