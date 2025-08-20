import 'package:equatable/equatable.dart';


class EstadoCentral extends Equatable {
  @override

  List<Object?> get props => [];
 
}

class EstadoInicial extends EstadoCentral {}

class EstadoCargando extends EstadoCentral {}

class EstadoFallo extends EstadoCentral {}

class EstadoExitoso extends EstadoCentral {
  final mimodelo;
  EstadoExitoso(this.mimodelo);

}







