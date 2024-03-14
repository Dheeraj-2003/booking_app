import 'package:booking_app/data/salon.dart';
import 'package:booking_app/data/services.dart';
import 'package:booking_app/widget/book_button.dart';
import 'package:booking_app/widget/calendar.dart';
import 'package:booking_app/widget/header_stack.dart';
import 'package:booking_app/widget/service_tile.dart';
import 'package:booking_app/widget/time_slot.dart';
import 'package:flutter/material.dart';

class BookingScreenAlt extends StatefulWidget {
  const BookingScreenAlt({required this.salon, super.key});

  final Salon salon;

  @override
  State<BookingScreenAlt> createState() => _BookingScreenAltState();
}

class _BookingScreenAltState extends State<BookingScreenAlt> {
  List<Widget> widgets = [
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
        height: 170,
        child: ServiceTile(services: services),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
      child: Text(
        "Available time",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 180,
        child: TimeSlot(),
      ),
    ),
    const BookButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text(
              "Book Appointment",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            stretch: true,
            pinned: true,
            expandedHeight: 227,
            floating: true,
            elevation: 0,
            leading: IconButton(
              icon: const CircleAvatar(
                  backgroundColor: Colors.black87,
                  radius: 20,
                  child: Icon(Icons.arrow_back_ios_rounded)),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: HeaderStack(salon: widget.salon),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: widgets.length,
                  (context, index) => widgets[index])),
        ],
      ),
    );
  }
}
