void minixSolution() {
  final delfin = Delfin("delfin");
  delfin.acciones();

  final murcielago = Murcielago("murcielago");
  murcielago.acciones();

  final gato = Gato("gato");
  gato.acciones();

  final paloma = Paloma("paloma");
  paloma.acciones();

  final pato = Pato("pato");
  pato.acciones();

  final tiburon = Tiburon("tiburon");
  tiburon.acciones();

  final pezVolador = PezVolador("pez volador");
  pezVolador.acciones();
}


abstract class Animal {
  final String name;

  Animal(this.name);

  void acciones();
}

abstract class Volador { void _volar() => print("YO vuelo"); }

abstract class Terrestre { void _caminar() => print("YO camino"); }

abstract class Nadador { void _nadar() => print("YO nado"); }

abstract class Mamifero extends Animal {
  Mamifero(super._name);
}

abstract class Ave extends Animal {
  Ave(super._name);
}

abstract class Pez extends Animal {
  Pez(super._name);
}

class Delfin extends Mamifero with Nadador {
  Delfin(super._name);
  
  @override void acciones() {
    _nadar();
  }
}

class Murcielago extends Mamifero with Terrestre , Volador{
  Murcielago(super._name);
  
  @override void acciones() {
    _caminar();
    _volar();
  }
}

class Gato extends Mamifero with Terrestre{
  Gato(super._name);
  
  @override void acciones() {
    _caminar();
  }
}

class Paloma extends Ave with Terrestre , Volador{
  Paloma(super._name);
  
  @override void acciones() {
    _volar();
    _caminar();
  }
}

class Pato extends Ave with Terrestre , Volador, Nadador{
  Pato(super._name);
  
  @override void acciones() {
    _nadar();
    _volar();
    _caminar();
  }
}

class Tiburon extends Ave with Nadador{
  Tiburon(super._name);


  @override void acciones() {
    _nadar();
  }
}

class PezVolador extends Ave with Volador, Nadador{
  PezVolador(super._name);

  @override void acciones() {
    _nadar();
    _volar();
  }
}