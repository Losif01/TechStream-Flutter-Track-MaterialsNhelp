class Pizza {
  final String size;
  final String crust;
  final String sauce;
  final List<String> toppings;
  final bool hasExtraCheese;
  final bool hasDoubleMeat;

  Pizza(this.size, this.crust, this.sauce, this.toppings, this.hasExtraCheese,
      this.hasDoubleMeat);

  @override
  String toString() =>
      'Pizza(size: $size, crust: $crust, sauce: $sauce, toppings: $toppings, extraCheese: $hasExtraCheese, doubleMeat: $hasDoubleMeat)';
}

class PizzaBuilder {
  String _size = 'Medium';
  String _crust = 'Thin';
  String _sauce = 'Tomato';
  List<String> _toppings = [];
  bool _hasExtraCheese = false;
  bool _hasDoubleMeat = false;

  PizzaBuilder size(String size) {
    this._size = size;
    return this; // Allow chaining for fluent builder usage
  }

  PizzaBuilder crust(String crust) {
    this._crust = crust;
    return this;
  }

  PizzaBuilder sauce(String sauce) {
    this._sauce = sauce;
    return this;
  }

  PizzaBuilder toppings(List<String> toppings) {
    this._toppings = toppings;
    return this;
  }

  PizzaBuilder hasExtraCheese(bool hasExtraCheese) {
    this._hasExtraCheese = hasExtraCheese;
    return this;
  }

  PizzaBuilder hasDoubleMeat(bool hasDoubleMeat) {
    this._hasDoubleMeat = hasDoubleMeat;
    return this;
  }

  Pizza build() {
    return Pizza(
        _size, _crust, _sauce, _toppings, _hasExtraCheese, _hasDoubleMeat);
  }
}

void main() {
  // final pizza1 = PizzaBuilder()
  //     .size('Large')
  //     .crust('Stuffed')
  //     .sauce('BBQ')
  //     .toppings(['pepperoni', 'mushrooms'])
  //     .hasExtraCheese(true)
  //     .build();

  // print(
  //     pizza1); // Output: Pizza(size: Large, crust: Stuffed, sauce: BBQ, toppings: [pepperoni, mushrooms], extraCheese: true, doubleMeat: false)

  final pizza2 = PizzaBuilder()
      .size('Small')
      .toppings(['onions', 'green peppers'])
      .hasDoubleMeat(true)
      .build();

  print(
      pizza2); // Output: Pizza(size: Small, crust: Thin, sauce: Tomato, toppings: [onions, green peppers], extraCheese: false, doubleMeat: true)
}
