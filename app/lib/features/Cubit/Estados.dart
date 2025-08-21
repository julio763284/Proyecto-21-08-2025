import 'package:equatable/equatable.dart';
import 'package:app/features/model/modelo.dart';


class EstadoCentral extends Equatable {
  @override

  List<Object?> get props => [];
 
}

class EstadoInicial extends EstadoCentral {}

class EstadoCargando extends EstadoCentral {}

class EstadoFallo extends EstadoCentral {}

class EstadoExitoso extends EstadoCentral {
  final Modelo mimodelo;
  EstadoExitoso(this.mimodelo);

}







