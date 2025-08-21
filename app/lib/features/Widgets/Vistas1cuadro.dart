import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/features/cubit/Estados.dart';
import 'package:app/features/cubit/cubit.dart';
import 'package:app/features/model/modelo.dart';

class Cuadro1 extends StatelessWidget {
  const Cuadro1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Manejadordeestados, EstadoCentral>(
      builder: (context, state) {
        if (state is EstadoInicial) {
          return _builtinitial();
        } else if (state is EstadoCargando) {
          return _builtloading();
        } else if (state is EstadoExitoso) {
          return _builtSuccess(state);
        } else if (state is EstadoFallo) {
          return _builtFailure();
        } else {
          return _builtFailure();
        }
      },
    );
  }

  Widget _builtinitial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "nombre_aplicacion   :  _________________________",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "fundacion           :  _________________________",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "sede                :  _________________________",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "Valor_en_el_mercado :  _________________________",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _builtloading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _builtSuccess(EstadoExitoso state) {
    final Modelo info = state.mimodelo;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("nombre_aplicacion   : ${info.nombreEmpresa} "),
        Text("fundacion           : ${info.fundacion}"),
        Text("sede                : ${info.sede}"),
        Text("Valor_en_el_mercado : ${info.valorenbolsa}"),
      ],
    );
  }

  Widget _builtFailure() {
    return Center(
      child: Text(
        "404 Not Found ",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
  }
}
