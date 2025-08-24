import 'package:app/features/cubit/Estados.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app/features/model/modelo.dart';


class Manejadordeestados extends Cubit<EstadoCentral> {
  Manejadordeestados() : super(EstadoInicial());

  void peticiondatos() async{
    emit(EstadoCargando());
    await Future.delayed(Duration(seconds: 3));
    final url = Uri.parse("https://gist.githubusercontent.com/julio763284/6d3dd225515b3ce5f5fa4a15a6489ac8/raw/03cf478093e358bbf1a56deefe6437f1efd20df5/gistfile1.txt");
    final response = await http.get(url);
    if (response.statusCode == 200) {
    final info = jsonDecode(response.body);
    Modelo data = Modelo(info);
    emit(EstadoExitoso(data));
    } else{
      emit(EstadoFallo());
    }
  }  
}








