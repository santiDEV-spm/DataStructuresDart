
import 'dart:collection';

void main(){

  //List
  final people = ['Pablo', 'Manda', 'Megan'];
  people.add('Edith');
  print(people);
  people.insert(0, 'Ray');

  //Map
  final scores = {'Eric':9, 'Mark':12, 'Wayne':1};
  scores['Andrew'] = 0;
  print(scores);

  final hashMap = HashMap.of(scores);
  print(hashMap);

  //Set
  var bag = {'Candy', 'Juice', 'Gummy'};
  bag.add('Candy');
  print(bag);

  final myList = [1, 2, 2, 3, 4];
  final mySet = <int>{};
  for(final item in myList){
    if(mySet.contains(item)){
      // mySet already has it, so it's a duplicate
    }
    mySet.add(item);
  }
  print(mySet);
}