class Anjing {
  Anjing(this.name);
  final String name;

  void bersuara(){
    print('Guk Guk');
  }
}

void main() {
  final anjing1 = Anjing('Fuseo');
  final anjing2 = Anjing('Pochi');
  print(anjing1.name);
  print(anjing2.name);

  anjing1.bersuara();
  anjing2.bersuara(); 
}