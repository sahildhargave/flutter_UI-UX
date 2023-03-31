import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../models/recommended_place.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 234,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
                width: 220,
                child: Card(
                  elevation: 20,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  recommendedPlaces[index].image,
                                  width: double.maxFinite,
                                  fit: BoxFit.cover,
                                  height: 150,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    recommendedPlaces[index].location,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 14,
                                  ),
                                  Text("4.4",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Ionicons.location,
                                    color: Theme.of(context).primaryColor,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("French Polnesia",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ))
                                ],
                              )
                            ],
                          ))),
                ));
          },
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 10),
              ),
          itemCount: recommendedPlaces.length),
    );
  }
}
