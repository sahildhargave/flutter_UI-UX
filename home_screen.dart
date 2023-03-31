import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/widgets/nearby_places.dart';
import 'package:travel_app/widgets/recommended_places.dart';
import '../widgets/custom_icon_button.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import "../widgets/location_card.dart";
import '../widgets/tourist_places.dart';
import 'package:flutter_glow/flutter_glow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            GlowText(
              "Good Morning",
              glowColor: Colors.white,
              blurRadius: 10,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Tetteh Jeron Asiedu",
              style: TextStyle(
                color: Colors.pink,
                fontSize: 10,
              ),
            )
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 12),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.all(14),
        children: [
          const LocationCard(),
          const SizedBox(height: 15),
          const TouristPlaces(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommendation",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: Text("View All"))
            ],
          ),
          const SizedBox(height: 10),
          const RecommendedPlaces(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: Text("View All"))
            ],
          ),
          const SizedBox(height: 10),
          const NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black, // <-- This works for fixed
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Ionicons.home_outline),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Ionicons.bookmark_outline),
                label: "Bookmark"),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Ionicons.ticket_outline),
                label: "Ticket"),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Ionicons.person_outline),
                label: "Profile"),
          ]),
    );
  }
}
