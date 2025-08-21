import 'package:equatable/equatable.dart';
import 'package:app/features/model/modelo2.dart';

class Estadobloc extends Equatable {
  @override
  List<Object?> get props => [];
}

class EstadoInicialbloc extends Estadobloc {}

class EstadoCargandobloc extends Estadobloc {}

class EstadoFallo extends Estadobloc {}

class EstadoExitosobloc extends Estadobloc {
  final Modelo2 modelo2;
  EstadoExitosobloc(this.modelo2);
}
