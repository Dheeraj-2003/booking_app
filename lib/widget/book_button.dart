import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({required this.onBook, super.key});

  final void Function() onBook;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ElevatedButton.icon(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              foregroundColor: MaterialStatePropertyAll(Colors.black),
              minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50))),
          onPressed: () {
            onBook();
          },
          icon: const Icon(
            Icons.wallet,
            size: 25,
          ),
          label: const Text(
            "Book Now",
            style: TextStyle(fontSize: 22),
          )),
    );
  }
}
