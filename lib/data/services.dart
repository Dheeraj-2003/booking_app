class Service {
  Service({required this.name, required this.price});
  final String name;
  final String price;
}

final List<Service> services = [
  Service(name: "Basic haircut", price: "20"),
  Service(name: "Kids haircut", price: "15"),
  Service(name: "Hair coloring", price: "30"),
  Service(name: "Hair treatment", price: "15"),
  Service(name: "Dandruff treatment", price: "20"),
  Service(name: "Hair wash", price: "10"),
];
