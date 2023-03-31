import 'package:flutter/material.dart';
import '../models/tourist_places.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Chip(
            label: Text(
              touristPlaces[index].name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(touristPlaces[index].image),
            ),
            backgroundColor: Colors.purple,
            elevation: 0.4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.white),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            const Padding(padding: EdgeInsets.only(right: 10)),
        itemCount: touristPlaces.length,
      ),
    );
  }
}
