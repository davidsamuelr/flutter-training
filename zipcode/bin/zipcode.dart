// Author: David Samuel
// MPE training

import 'package:zipcode/zipcode.dart' as zipcode;
import 'package:zipcode/models/zipcode.model.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  print("Digite o cep");
  String? zipcode = stdin.readLineSync();

  final future = http.get(Uri.https('viacep.com.br', '/ws/${zipcode}/json'));

  future.then((response) {
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);

      if (data['erro'] != true) {
        ZipCodeModel objZipCodeModel = ZipCodeModel(
            data['cep'],
            data['logradouro'],
            data['complemento'],
            data['bairro'],
            data['localidade'],
            data['uf'],
            data['ibge'],
            data['ddd'],
        );

        print(objZipCodeModel);
      } else {
        print('Cep inválido');
      }
    } else {
      print("Erro");
    }
  });
}