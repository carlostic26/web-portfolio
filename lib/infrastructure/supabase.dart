import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:web_portfolio/domain/project_utils.dart';

Future <List<ProjectUtils>> traerProyectosRealizados()async{
final data= await Supabase.instance.client.from('proyectos').select();
print(data);
return [];
}