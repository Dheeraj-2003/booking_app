import 'package:booking_app/data/salon.dart';
import 'package:booking_app/screens/alt_booking_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Salon> listSalons = salons;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Icon(
            Icons.home,
            size: 28,
          ),
        ),
        title: const Text(
          "Choose a salon",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: salons.length,
              itemBuilder: (ctx, idx) => ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) =>
                              BookingScreenAlt(salon: listSalons[idx])));
                    },
                    leading: const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            "lib/assets/images/pexels-kaique-rocha-331989.jpg")),
                    title: Text(listSalons[idx].name),
                    subtitle: Text(listSalons[idx].address),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                  ))),
    );
  }
}
