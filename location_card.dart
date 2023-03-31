import "package:flutter/material.dart";

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.asset(
                'assets/map.png',
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Your Location",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.pink,
                      ),
                ),
                SizedBox(height: 5),
                Text(
                  "United States, New York",
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ])
            ],
          ),
        ));
  }
}
