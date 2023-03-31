import 'package:flutter/material.dart';
import './home_screen.dart';
import '../widgets/glowing.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:flutter_glow/flutter_glow.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Padding(
      padding: EdgeInsets.all(50),
      child: Column(children: [
        const Spacer(),
        Image.asset(
          'assets/pngwing.png',
        ),
        SizedBox(
          height: 50,
        ),
        const Text("“Live life with no excuses, travel with no regret”",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(
          height: 20,
        ),
        Text("Travel With us because life is journey ,not a destination",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            )),
        //Neon(
        //  text: 'vijaycreations',
        //  color: Colors.blue,
        //  fontSize: 40,
        //  font: NeonFont.Beon,
        //  flickeringText: true,
        //  flickeringLetters: null,
        //  glowingDuration: new Duration(seconds: 1),
        //);
        //    FlickerNeonText(
        //  text: "Flicker neon text",
        //  flickerTimeInMilliSeconds: 600,
        //  spreadColor: Colors.blue,
        //  blurRadius: 20,
        //  textSize: 74,
        //),
        const Spacer(),

        Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 4,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 8.0)),
                  child: const Text("Get start"),
                ))),
      ]),
    ))));
  }
}
