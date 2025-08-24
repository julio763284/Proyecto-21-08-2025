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
          "https://gist.githubusercontent.com/julio763284/db4cfff94d147185ebef34e255e94498/raw/1f540659d2da1a3914e45e690bd083fe13c71780/gistfile1.txt",
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
