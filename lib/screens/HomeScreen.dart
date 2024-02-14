import 'package:flutter/material.dart';
import 'package:uiux/utils/text_utils.dart';
import '../utils/color_utils.dart';
import 'ChargingScreen.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: appColors.secondaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtil(text: "Hello!", size: 14),
            TextUtil(text: "Sahil", color: appColors.whiteColor, weight: true),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: appColors.cardColor,
            child: Icon(
              Icons.grid_view,
              color: appColors.greyColor,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ChargingScreen(),
            ),
          );
        },
        child: Hero(
          tag: "Charge",
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColors.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: appColors.primaryColor.withOpacity(0.3),
                  offset: const Offset(5, 5),
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: appColors.primaryColor.withOpacity(0.3),
                  offset: const Offset(-3, -3),
                  blurRadius: 10,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: const Icon(Icons.electric_bike, size: 35),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 90,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: appColors.cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 140,
                    width: 90,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: appColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtil(
                          text: "75%",
                          color: appColors.blackColor,
                          weight: true,
                          size: 20,
                        ),
                        const SizedBox(height: 8),
                        TextUtil(
                          text: "Charging",
                          color: appColors.blackColor,
                          size: 10,
                          weight: true,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: appColors.cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SmallText(text: "Kms Driven"),
                                  Row(
                                    children: [
                                      MediumText(text: "6666"),
                                      const SizedBox(width: 10),
                                      SmallText(text: "Kms"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Icon(
                                  Icons.route,
                                  color: appColors.primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 90,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: appColors.cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SmallText(text: "Range"),
                                  Row(
                                    children: [
                                      MediumText(text: "120"),
                                      const SizedBox(width: 10),
                                      SmallText(text: "Kms"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.motorcycle,
                                color: appColors.primaryColor,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: appColors.cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_open_rounded,
                                color: appColors.primaryColor, size: 40),
                            const SizedBox(height: 5),
                            SmallText(text: "Unlock")
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                        child: Container(
                            height: 90,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: appColors.cardColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.local_gas_station_outlined,
                                    color: appColors.primaryColor, size: 40),
                                const SizedBox(height: 5),
                                SmallText(text: "Start Charging")
                              ],
                            )))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios, color: appColors.greyColor),
                    Icon(Icons.arrow_back_ios, color: appColors.lightGreyColor),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: appColors.lightGreyColor,
                      child: Icon(Icons.key, color: appColors.blackColor),
                    ),
                    const SizedBox(width: 5),
                    Icon(Icons.arrow_forward_ios,
                        color: appColors.lightGreyColor),
                    Icon(Icons.arrow_forward_ios, color: appColors.greyColor),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
                height: 90,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: appColors.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: appColors.greyColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.groups_outlined,
                        color: appColors.primaryColor,
                        size: 40,
                      )),
                  const SizedBox(width: 20),
                  SmallText(text: "Update Your Experence")
                ])),
            const SizedBox(height: 20),
            Container(
                height: 90,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: appColors.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: appColors.greyColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.alarm,
                      color: appColors.primaryColor,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SmallText(
                    text: "Service Reminder",
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
