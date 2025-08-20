import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/features/cubit/Estados.dart';
import 'package:app/features/cubit/cubit.dart';



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

  Widget _builtinitial(){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("nombre_aplicacion   :  _________________________"),
        Text("fundacion           :  _________________________"),
        Text("sede                :  _________________________"),
        Text("Valor_en_el_mercado :  _________________________"),
        ],
        
      ),
    );
  }

  Widget _builtloading(){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("nombre_aplicacion   :  _________________________"),
        Text("fundacion           :  _________________________"),
        Text("sede                :  _________________________"),
        Text("Valor_en_el_mercado :  _________________________"),
        ],
        
      ),
    );
  }

  Widget _builtSuccess(EstadoExitoso state){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("nombre_aplicacion   :  _________________________"),
        Text("fundacion           :  _________________________"),
        Text("sede                :  _________________________"),
        Text("Valor_en_el_mercado :  _________________________"),
        ],
        
      ),
    );
  }

   Widget _builtFailure() {
    return Center(
      child: Text(
        "404 Founded ",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
  }
}

