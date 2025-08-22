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
          return _builtFailure(context);
        } else {
          return _builtFailure(context);
        }
      },
    );
  }

  Widget _builtinitial() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Nombre Empresa   :  __________",
          style: TextStyle(color: Colors.white, fontSize: 15),  
        ),
        Text(
          "fundacion           :  __________",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          "sede                :  __________",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        Text(
          "Valor en el Mercado :  __________",
          style: TextStyle(color: Colors.white, fontSize: 15),
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
        Text(
          "Nombre Empresa : ${info.nombreEmpresa}", style: TextStyle(color: Colors.white, fontSize: 15)),
        Text(
          "fundacion :  ${info.fundacion}", style: TextStyle(color: Colors.white, fontSize: 15)),
        Text(
          "sede :  ${info.sede}", style: TextStyle(color: Colors.white, fontSize: 15)),
        Text(
          "Valor en el mercado :  ${info.valorenbolsa}", style: TextStyle(color: Colors.white, fontSize: 15)),
      ],
    );
  }

  Widget _builtFailure(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("404 Not Found " ,
          style: TextStyle(color: Colors.white),),
          ElevatedButton(onPressed: (){
            context.read<Manejadordeestados>().peticiondatos();
            }, child: Text("Reintentar"))
        ]  
      ),
    );
  }
}
