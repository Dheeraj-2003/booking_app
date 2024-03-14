import 'package:booking_app/data/services.dart';
import 'package:flutter/material.dart';

class ServiceTile extends StatefulWidget {
  const ServiceTile({required this.services, super.key});

  final List<Service> services;

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  int _selectedService = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.services.length,
        itemBuilder: (ctx, idx) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedService = idx;
                    });
                  },
                  child: Stack(alignment: Alignment.center, children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          "lib/assets/images/pexels-kaique-rocha-331989.jpg"),
                    ),
                    _selectedService == idx
                        ? CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.black.withOpacity(0.3), //,
                          )
                        : const SizedBox(),
                    _selectedService == idx
                        ? const Icon(Icons.check)
                        : const SizedBox(),
                  ]),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(widget.services[idx].name),
                const SizedBox(
                  height: 6,
                ),
                Text("\$ ${widget.services[idx].price}"),
              ],
            ),
          );
        });
  }
}
