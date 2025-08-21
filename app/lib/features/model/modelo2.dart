
class Modelo2 {
  String? nombreEmpresa;
  String? fundacion;
  String? sede;
  String? valorenbolsa;

  Modelo2(Map json){
    nombreEmpresa = json['nombre_aplicacion'];
    fundacion = json['fundacion'];
    sede = json['sede'];
    valorenbolsa = json['Valor_en_el_mercado'];
  }
}
