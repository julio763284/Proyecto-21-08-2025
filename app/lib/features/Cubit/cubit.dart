import 'package:app/features/cubit/Estados.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app/features/model/modelo.dart';


class Manejadordeestados extends Cubit<EstadoCentral> {
  Manejadordeestados() : super(EstadoInicial());

  void peticiondatos() async{
    emit(EstadoCargando());
    final url = Uri.parse("https://gist.githubusercontent.com/julio763284/747854e8547135bdb93203aa23bb342f/raw/9c083bb2282202557e7d4797a34d422b5213e8f3/gistfile1.txt");
    final response = await http.get(url);
    if (response.statusCode == 200) {
    Map info = jsonDecode(response.body);
    Modelo data = Modelo(info);
    emit(EstadoExitoso(data));
    } else{
      emit(EstadoFallo());
    }
  }  
}








