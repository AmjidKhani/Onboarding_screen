import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled15/responsivebutton/responsivebutton.dart';
import 'package:untitled15/resuabletext/reusetext.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",

  ];

  @override
  Widget build(BuildContext context) {
    const S20 = SizedBox(
      height: 20,
    );
    var S10 = SizedBox(
      height: 10,
    );
    var S40 = SizedBox(
      height: 40,
    );
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover,
                    ),
                   // color: Colors.purple,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            reusetext(
                              text: 'Trips',
                              fc: Colors.black,
                              fw: FontWeight.bold,
                              fs: 30,
                            ),
                            reusetext(
                              text: 'Discover',
                              fc: Colors.black,
                              fs: 30,
                            ),
                            S20,
                            Container(
                              width: 250,
                              child: reusetext(
                                text:
                                    'Mountains hiking is very intresting thing. '
                                    'It is best both physical and mentally and It is good as the physical exercise.  ',
                                fc: Colors.black54,
                              ),
                            ),
                            S20,
                            GestureDetector(
                                onTap: () {}, child: responsivebutton()),
                          ],
                        ),
                        Column(
                            children: List.generate(3, (Dotindicatorindex) {
                          return Container(
                            margin: EdgeInsets.only(bottom: 2),
                            height: (index == Dotindicatorindex ? 25 : 12),
                            width: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == Dotindicatorindex
                                  ? Colors.blue
                                  : Colors.black54,
                            ),
                          );
                        })),
                      ],
                    ),
                  ));
            }));
  }
}
