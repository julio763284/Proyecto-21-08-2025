import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/features/bloc/estados_bloc.dart';
import 'package:app/Features/Bloc/eventos.dart';
import 'dart:convert';
import 'package:app/features/model/modelo2.dart';

class Logicabloc extends Bloc<Eventos, Estadobloc> {
  Logicabloc() : super(EstadoInicialbloc()) {
    on<CargaEvento>((event, emit) async {
        emit(EstadoCargandobloc());
        await Future.delayed(Duration(seconds: 3));
        final url = Uri.parse(
          "https://gist.githubusercontent.com/julio763284/9a5a1eb57441324f3b0c86dd01e1620a/raw/913a50c7286fbe9e433b5fad1eb2232c9f464378/2da%2520Peticion%2520Bloc",
        );
        final response = await http.get(url);
        if (response.statusCode == 200) {
          final datos = jsonDecode(response.body);
          Modelo2 data = Modelo2(datos);
          emit(EstadoExitosobloc(data));
        } else {
          emit(EstadoFallo());
        }
    });
  }
}
