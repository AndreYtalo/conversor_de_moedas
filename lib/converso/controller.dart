class controller {
  List<String> paises = [
    'Real',
    'Euro',
    'Dolar',
  ];
  List<double> precos = [
    1.0,
    5.45,
    5.05,
  ];
  double resultado = 0;
  String? dropdwonvalor;
  String? dropdwonvalor2;

  void calculo(
    String valor1,
  ) {
    double preco1 = 0;
    double preco2 = 0;

    for (int i = 0; i < paises.length; i++) {
      if (dropdwonvalor == paises[i]) {
        preco1 = precos[i];
      }
      if (dropdwonvalor2 == paises[i]) {
        preco2 = precos[i];
      }
    }
    resultado = (preco1 * double.parse(valor1)) / preco2;
  }
}
