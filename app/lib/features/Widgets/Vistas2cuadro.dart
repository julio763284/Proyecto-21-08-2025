import 'package:app/features/model/modelo2.dart';
import 'package:flutter/material.dart';
import 'package:app/features/bloc/bloc.dart';
import 'package:app/features/bloc/estados_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cuadro2 extends StatelessWidget {
  const Cuadro2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Logicabloc, Estadobloc>(
      builder: (context, state) {
        if (state is EstadoInicialbloc) {
          return _builtinitial2();
        } else if (state is EstadoCargandobloc) {
          return _builtloading2();
        } else if (state is EstadoExitosobloc) {
          return _builtSucess2(state);
        } else if (state is EstadoFallo) {
          return _builtFailure2();
        } else {
          return _builtFailure2();
        }
      },
    );
  }

  Widget _builtinitial2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Nombre Empresa   :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "fundacion           :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "sede                :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "Valor en el Mercado :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }

  Widget _builtloading2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Nombre Empresa   :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "fundacion           :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "sede                :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "Valor en el Mercado :  __________",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }

  Widget _builtSucess2(EstadoExitosobloc state) {
    final Modelo2 modelo2 = state.modelo2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Nombre Empresa   : ${modelo2.nombreEmpresa}",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "fundacion           : ${modelo2.fundacion}",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "sede                : ${modelo2.sede}",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          "Valor en el Mercado : ${modelo2.valorenbolsa}",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }

  Widget _builtFailure2() {
    return Center(
      child: Text(
        "404 Not Found ",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
  }
}
