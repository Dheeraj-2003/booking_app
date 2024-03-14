import 'package:booking_app/data/services.dart';

class Salon {
  Salon({
    required this.name,
    required this.address,
    required this.services,
    required this.availableTimes,
  });
  final String name;
  final String address;
  final List<Service> services;
  List<bool> availableTimes;
}

final List<Salon> salons = [
  Salon(
      name: "Style Spectrum Studio",
      address: "Lorem ipsum (2 km)",
      services: services,
      availableTimes: [
        false,
        false,
        false,
        true,
        true,
        true,
        false,
        true,
        true,
        true,
        true,
        false
      ]),
  Salon(
      name: "Tress Trends & Co.",
      address: "Lorem ipsum (2 km)",
      services: services,
      availableTimes: [
        true,
        false,
        true,
        true,
        false,
        true,
        false,
        true,
        true,
        true,
        true,
        false
      ]),
  Salon(
      name: "Shear Serenity Salon",
      address: "Lorem ipsum (2 km)",
      services: services,
      availableTimes: [
        true,
        true,
        true,
        true,
        true,
        true,
        false,
        true,
        true,
        true,
        true,
        false
      ]),
  Salon(
      name: "Luxe Lather Lounge",
      address: "Lorem ipsum (2 km)",
      services: services,
      availableTimes: [
        true,
        false,
        true,
        true,
        true,
        true,
        true,
        true,
        true,
        true,
        true,
        false
      ]),
  Salon(
      name: "Crown & Curls Co.",
      address: "Lorem ipsum (2 km)",
      services: services,
      availableTimes: [
        true,
        true,
        true,
        true,
        false,
        false,
        false,
        true,
        true,
        true,
        true,
        false
      ])
];
