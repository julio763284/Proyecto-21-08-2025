
class Modelo {
  String? nombreEmpresa;
  String? fundacion;
  String? sede;
  String? valorenbolsa;

  Modelo(Map json){
    nombreEmpresa = json['nombre_aplicacion'];
    fundacion = json['fundacion'];
    sede = json['sede'];
    valorenbolsa = json['valor_en_el_mercado'];
  }
}
