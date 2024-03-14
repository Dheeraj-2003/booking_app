import 'package:booking_app/data/salon.dart';
import 'package:booking_app/data/services.dart';
import 'package:booking_app/widget/calendar.dart';
import 'package:booking_app/widget/service_tile.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({required this.salon, super.key});

  final Salon salon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book your appointment"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.bottomLeft, children: [
              SizedBox(
                height: 278,
                child: Image.asset(
                  "lib/assets/images/pexels-thgusstavo-santana-1813272.jpg",
                  width: 420,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                color: Colors.black
                    .withOpacity(0.3), // Adjust overlay color and opacity
                height: 278,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      salon.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          salon.address,
                          softWrap: true,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "5.0",
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Choose Date",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const CalendarView(),
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: Text(
                "Choose Service",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 200,
                child: ServiceTile(services: services),
              ),
            )
          ],
        ),
      ),
    );
  }
}
