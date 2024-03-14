class Salon {
  Salon({
    required this.name,
    required this.address,
  });
  final String name;
  final String address;
}

final List<Salon> salons = [
  Salon(name: "Style Spectrum Studio", address: "Lorem ipsum (2 km)"),
  Salon(name: "Tress Trends & Co.", address: "Lorem ipsum (2 km)"),
  Salon(name: "Shear Serenity Salon", address: "Lorem ipsum (2 km)"),
  Salon(name: "Luxe Lather Lounge", address: "Lorem ipsum (2 km)"),
  Salon(name: "Crown & Curls Co.", address: "Lorem ipsum (2 km)")
];
