
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