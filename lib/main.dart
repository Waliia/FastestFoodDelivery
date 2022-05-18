import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';
//import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/backward.svg',
                  height: 11,
                ),
                // SvgPicture.asset(
                //   'assets/icons/Following.svg',
                //   height: 11,
                // ),
                Icon(
                  Icons.favorite_outline,
                  size: 20,
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.all(6),
              height: 250,
              width: 250,
              decoration: const BoxDecoration(shape: BoxShape.rectangle),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/double-burger.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'McDonald\'s \n',
                            style: TextStyle(
                              color: Colors.grey.shade900,
                            ),
                          ),
                          const TextSpan(
                              text: 'Double Cheese Burger',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20))
                        ],
                      ),
                    ),
                    // SmoothStarRating(
                    //   rating: 4,
                    //   color: Color(0xFFFFC61F),
                    // )
                  ],
                ),
                const Text('\$47',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua. ",
              style: TextStyle(letterSpacing: 1.0),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 70),
                    decoration: BoxDecoration(
                      //  color: Colors.yellow.shade900,
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Add to cart',
                          style: Theme.of(context)
                              .textTheme
                              .button
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          height: 11,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
