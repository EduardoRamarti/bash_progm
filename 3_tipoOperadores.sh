#!/bin/bash
#Programa para revisar los tipos de operadores
#Author: Eduardo RM

numA=10
numB=4

echo "Operadores aritmeticos"
echo "Numeros A = $numA y B = $numB"
echo "Sumar A + B = $((numA + numB))"
#La razón por la que se utilizan los doble paréntesis "$((...))" es porque esto indica que se debe evaluar la expresión matemática que se encuentra dentro de los paréntesis y luego imprimir el resultado de esa evaluación en la línea de comandos.

#La expresión matemática dentro de los doble paréntesis puede incluir variables, operadores aritméticos y otros elementos necesarios para realizar la operación matemática deseada. En este caso, la expresión "$((numA + numB))" utiliza el operador de suma "+" para sumar las variables "numA" y "numB".
echo "Restar A - B = $((numA - numB))"
echo "Multiplicar A * B = $((numA * numB))"
echo "Dividirr A / B = $((numA / numB))"
echo "Dividirr A % B = $((numA % numB))"

#El flag "-e" se utiliza para habilitar la interpretación de caracteres especiales 
#de escape en la cadena de texto que se va a imprimir.
echo -e "\nOperadores Relacionales"
echo "Numeros A = $numA y B = $numB"
echo "A > B = $((numA > numB))"
echo "A < B = $((numA < numB))"
echo "A >= B = $((numA >= numB))"
echo "A <= B = $((numA <= numB))"
echo "A == B = $((numA == numB))"
echo "A != B = $((numA != numB))"


echo -e "\nOperadores de Asignacion"
echo "Numeros A = $numA y B = $numB"
echo "Sumar A += B = $((numA += numB))"
echo "Restar A -= B = $((numA -= numB))"
echo "Multiplicar A *= B = $((numA *= numB))"
echo "Dividir A /= B = $((numA /= numB))"
echo "Dividir A %= B = $((numA %= numB))"

