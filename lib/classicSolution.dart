class ClassicSolution {

  ClassicSolution() {
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
}

abstract class Animal {
  final String name;

  Animal(this.name);

  void acciones();
}

abstract class Volador { void _volar(); }

abstract class Terrestre { void _caminar(); }

abstract class Nadador { void _nadar(); }

abstract class Mamifero extends Animal {
  Mamifero(super._name);
}

abstract class Ave extends Animal {
  Ave(super._name);
}

abstract class Pez extends Animal {
  Pez(super._name);
}

class Delfin extends Mamifero implements Nadador {
  Delfin(super._name);
  
  @override void _nadar() => print("YO $name nado");

  @override void acciones() {
    _nadar();
  }
}

class Murcielago extends Mamifero implements Terrestre , Volador{
  Murcielago(super._name);
  
  @override void _caminar() => print("YO $name camino");
  
  @override void _volar() => print("YO $name vuelo");

  @override void acciones() {
    _caminar();
    _volar();
  }
}

class Gato extends Mamifero implements Terrestre{
  Gato(super._name);
  
  @override void _caminar() => print("YO $name camino");

  @override void acciones() {
    _caminar();
  }
}

class Paloma extends Ave implements Terrestre , Volador{
  Paloma(super._name);
  
  @override void _caminar() => print("YO $name camino");
  
  @override void _volar() => print("YO $name vuelo");

  @override void acciones() {
    _volar();
    _caminar();
  }
}

class Pato extends Ave implements Terrestre , Volador, Nadador{
  Pato(super._name);
  
  @override void _caminar() => print("YO $name camino");
  
  @override void _volar() => print("YO $name vuelo");

  @override void _nadar() => print("YO $name nadar");

  @override void acciones() {
    _nadar();
    _volar();
    _caminar();
  }
}

class Tiburon extends Ave implements Nadador{
  Tiburon(super._name);

  @override void _nadar() => print("YO $name nadar");

    @override void acciones() {
    _nadar();
  }
}

class PezVolador extends Ave implements Volador, Nadador{
  PezVolador(super._name);
  
  @override void _volar() => print("YO $name vuelo");

  @override void _nadar() => print("YO $name nadar");

  @override void acciones() {
    _nadar();
    _volar();
  }
}