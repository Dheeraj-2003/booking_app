import 'package:booking_app/data/salon.dart';
import 'package:booking_app/data/services.dart';
import 'package:booking_app/screens/home_screen.dart';
import 'package:booking_app/widget/book_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen(
      {required this.salon,
      required this.service,
      required this.date,
      required this.time,
      super.key});

  final Salon salon;
  final Service service;
  final DateTime date;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thank you!"),
      ),
      body: Center(
        child: Card(
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.check,
                size: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Congratulations, you have booked your slot with Salon - ${salon.name}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Text(
              "Date : ${formatter.format(date)}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Time : ${8 + time ~/ 2}: ${time % 2 * 3}0",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "For ${service.name}",
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              "Your bill - \$${service.price}",
              style: const TextStyle(fontSize: 20),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ElevatedButton.icon(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 50))),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (ctx) => const HomeScreen()));
                  },
                  icon: const Icon(
                    Icons.home,
                    size: 25,
                  ),
                  label: const Text(
                    "Back to Home Screen",
                    style: TextStyle(fontSize: 22),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
