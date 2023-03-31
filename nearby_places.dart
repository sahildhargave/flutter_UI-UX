import 'package:flutter/material.dart';
import '../widgets/distance.dart';
import '../models/nearby.dart';

class NearbyPlaces extends StatelessWidget {
  const NearbyPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(nearby.length, (index) {
      return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
              height: 135,
              width: double.maxFinite,
              child: Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                nearby[index].image,
                                height: double.maxFinite,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  "Sea of Peace",
                                  style: TextStyle(
                                    //background: Colors.pink,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Portic Team"),
                                SizedBox(height: 10),
                                Distance(),
                                Spacer(),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 14,
                                    ),
                                    // ignore: unnecessary_const
                                    const Text(
                                      "4.5",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    const Spacer(),
                                    RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            text: '\$22',
                                            children: [
                                          TextSpan(
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black54,
                                              ),
                                              text: "/Person")
                                        ]))
                                  ],
                                ),
                              ],
                            ))
                          ],
                        ))),
              )));
    }));
  }
}
