
void main(){
  int n = 100000000;
  final start = DateTime.now();
  final sum = sumFromOneTo(n);
  final end = DateTime.now();
  final time = end.difference(start);
  print('Algorithm 1 --- Result: $sum, Time: $time');

  final start1 = DateTime.now();
  final sum1 = betterSumFromOneTo(n);
  final end1 = DateTime.now();
  final time1 = end1.difference(start1);
  print('Algorithm 2 --- Result: $sum1, Time: $time1');
}

//Example O(n)
int sumFromOneTo(int n){
  var sum = 0;
  for(var i = 1; i<=n; i++){
    sum += i;
  }
  return sum;
}

// Example O(1)
int betterSumFromOneTo(int n){
  return n *(n+1) ~/ 2;
}

//constant time -> Big O notation -> O(1)
void checkFirst(List<String> names){
  if(names.isNotEmpty){
    print(names.first);
  }else{
    print('No names');
  }
}

//Linear Time -> Big O notation -> O(n)
void printNames(List<String> names){
  if(names.isNotEmpty){
    for(final name in names){
      print(name);
    }
  }else{
    print('No names');
  }
}

//Quadratic Time -> Big O notation -> O(n²).
void printMoreNames(List<String> names){
  for(final _ in names){
    for(final name in names){
      print(name);
    }
  }
}

//Other example linear Time
bool naiveContains(int value, List<int> list){
  for(final element in list){
    if(element == value) return true;
  }
  return false;
}

// Logarithmic Time -> Big O notation -> O(logn)
bool betterNaiveContains(int value, List<int> list){
  if(list.isEmpty) return false;
  final middleIndex = list.length ~/ 2;

  if(value > list[middleIndex]){
    for(var i = middleIndex; i < list.length; i++){
      if(list[i] == value) return true;
    }
  }else{
    for(var i = middleIndex; i>=0; i--){
      if(list[i] == value) return true;
    }
  }
  return false;

}

//Space Complexity

/* Define dos espacios de memoria para los datos de entrada
*  y un espacio mas para el valor de retorno, por muy granades
*  que sean estos valores no ocupara mas espacio, lo que signifia
*   que la complejidad del espacio del algoritmo es constante -> O(1)
*/
int multiply(int a, int b){
  return a*b;
}

/* Este algoritmo crea una lista llena con la cadena 'a'. Cuanto mayor es la longitud,
* más larga será la lista y, por lo tanto, se requerirá más espacio para almacenar la lista en
* memoria. Dado que el espacio aumenta proporcionalmente con el valor de entrada, el espacio
* la complejidad de este algoritmo es lineal y la notación Big O es O(n).
* */
List<String> fillList(int length){
  return List.filled(length, 'a');
}

/* Los valores más grandes de longitud no solo hacen que la lista sea más larga, sino que también aumentan el tamaño
*  de la cadena en cada elemento de la lista. Especificar 5 para la longitud crearía una lista de
*  longitud 5 cuyos elementos son 'aaaa'. Al igual que con la complejidad del tiempo cuadrático, el Big O
*  la notación para la complejidad del espacio cuadrático es O(n²).
*/
List<String> stuffList(int length){
  return List.filled(length, 'a' * length);
}