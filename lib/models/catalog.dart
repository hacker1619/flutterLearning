class CatalogModel {
  static final items = [
    Item(1, "iphone1", 100, "teri kidney jaygi esme", "blue",
        "https://m.media-amazon.com/images/I/71hIfcIPyxS._AC_UF1000,1000_QL80_.jpg")
  ];
}

class Item {
  final int id;

  final String name;
  final int pricel;
  final String desc;
  final String color;
  final String image;

  Item(this.id, this.name, this.pricel, this.desc, this.color, this.image);
}
