import 'package:flutter/material.dart';
import 'package:water_reminder/screens/splash_screens/onbody_screen.dart';

class First_screen extends StatelessWidget {
  const First_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
            ),
            const Text(
              "  Hi \n  I'm your personal \n  hydration companion",
              style: TextStyle(fontSize: 29),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "    in order to provide tailored hydration advice \n    i need to get some basic information And \n    I'll keep this a secret",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Onbody_screen()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 70.0, right: 70, top: 15, bottom: 15),
                    child: Text(
                      "LET'S GO",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ))),
                )
              ],
            )
          ],
        ),
        //
      ),
    );
  }
}
