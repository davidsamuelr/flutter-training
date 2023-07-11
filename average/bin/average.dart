// Author: David Samuel
// MPE training

import 'package:average/average.dart' as average;
import 'dart:io';

void main(List<String> arguments) {

  try{
    
    print("Nota 1");
    double nota1 = double.parse(stdin.readLineSync()!);
    
    print("Nota 2");
    double nota2 = double.parse(stdin.readLineSync()!);
        
    print('MÉDIA= ${average.calculateAverage(nota1, nota2)}');
  
  }on FormatException{
    print ('Erro');
  }finally{
    print('Fim do programa');
  }  

}