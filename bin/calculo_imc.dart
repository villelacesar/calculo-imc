import 'dart:io';
import 'package:calculo_imc/models/Pessoa.dart';

void main(List<String> arguments) {
  try {
    print('Digite o nome da pessoa:');
    String? nome = stdin.readLineSync();
    if (nome == null || nome.isEmpty) {
      throw Exception('O nome não pode ser vazio.');
    }

    print('Digite o peso (em kg):');
    String? pesoInput = stdin.readLineSync();
    if (pesoInput == null || pesoInput.isEmpty) {
      throw Exception('O peso não pode ser vazio.');
    }
    double peso = double.parse(pesoInput);

    print('Digite a altura (em metros):');
    String? alturaInput = stdin.readLineSync();
    if (alturaInput == null || alturaInput.isEmpty) {
      throw Exception('A altura não pode ser vazia.');
    }
    double altura = double.parse(alturaInput);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calculoIMC();

    print('\nResultado:');
    print('Nome: ${pessoa.nome}');
    print('IMC: ${imc.toStringAsFixed(2)}');

    if (imc < 18.5) {
      print('Classificação: Abaixo do peso.');
    } else if (imc < 24.9) {
      print('Classificação: Peso normal.');
    } else if (imc < 29.9) {
      print('Classificação: Sobrepeso.');
    } else {
      print('Classificação: Obesidade.');
    }
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
