import 'package:booking_app/data/services.dart';

class Salon {
  Salon({
    required this.name,
    required this.address,
    required this.services,
  });
  final String name;
  final String address;
  final List<Service> services;
  List<String>? availableTimes;
}

final List<Salon> salons = [
  Salon(
      name: "Style Spectrum Studio",
      address: "Lorem ipsum (2 km)",
      services: services),
  Salon(
      name: "Tress Trends & Co.",
      address: "Lorem ipsum (2 km)",
      services: services),
  Salon(
      name: "Shear Serenity Salon",
      address: "Lorem ipsum (2 km)",
      services: services),
  Salon(
      name: "Luxe Lather Lounge",
      address: "Lorem ipsum (2 km)",
      services: services),
  Salon(
      name: "Crown & Curls Co.",
      address: "Lorem ipsum (2 km)",
      services: services)
];
