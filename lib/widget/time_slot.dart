import 'package:flutter/material.dart';

class TimeSlot extends StatefulWidget {
  const TimeSlot(
      {required this.availableTimes, required this.onSelect, super.key});

  final List<bool> availableTimes;

  final void Function(int time) onSelect;

  @override
  State<TimeSlot> createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 12,
      padding: const EdgeInsets.all(0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, childAspectRatio: 1.8),
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(6),
        child: InkWell(
          onTap: () {
            if (widget.availableTimes[i] == true) {
              setState(() {
                widget.onSelect(i);
                _selectedIndex = i;
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
                color: i == _selectedIndex ? Colors.white : Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 1,
                    color: widget.availableTimes[i] == true
                        ? Colors.white.withOpacity(0.6)
                        : Colors.white.withOpacity(0.2))),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "${8 + i ~/ 2} : ${(i % 2) * 3}0",
                style: TextStyle(
                    color: i == _selectedIndex ? Colors.black : Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
