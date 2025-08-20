import 'package:equatable/equatable.dart';
import 'package:app/features/model/modelo.dart';


class EstadoCentral extends Equatable {
  @override

  List<Object?> get props => [];
 
}

class EstadoInicial extends EstadoCentral {}

class EstadoCargando extends EstadoCentral {}

class EstadosFallo extends EstadoCentral {}

class EstadoExitoso extends EstadoCentral {
  final mimodelo;
  EstadoExitoso(this.mimodelo);

}







