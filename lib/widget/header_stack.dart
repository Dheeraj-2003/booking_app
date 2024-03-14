import 'package:booking_app/data/salon.dart';
import 'package:flutter/material.dart';

class HeaderStack extends StatelessWidget {
  const HeaderStack({required this.salon, super.key});

  final Salon salon;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomLeft, children: [
      SizedBox(
        height: 278,
        child: Image.asset(
          "lib/assets/images/pexels-thgusstavo-santana-1813272.jpg",
          width: 420,
          fit: BoxFit.fitWidth,
        ),
      ),
      Container(
        color:
            Colors.black.withOpacity(0.55), // Adjust overlay color and opacity
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
                  style: const TextStyle(color: Colors.white, fontSize: 18),
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
      ),
    ]);
  }
}
