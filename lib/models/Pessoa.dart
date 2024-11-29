class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calculoIMC(){
    return peso / (altura * altura);
  }
}