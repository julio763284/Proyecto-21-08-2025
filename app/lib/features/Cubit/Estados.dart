import 'package:equatable/equatable.dart';


class EstadoCentral extends Equatable {
  @override

  List<Object?> get props => [];
 
}

class EstadoInicial extends EstadoCentral {}

class EstadoCargando extends EstadoCentral {}

class EstadosFallo extends EstadoCentral {}

class EstadoExitoso extends EstadoCentral {}







