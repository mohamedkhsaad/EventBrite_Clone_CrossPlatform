// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

import '../find_events/find_events.dart';

class ChooseYourFavCategories extends StatefulWidget {
  ChooseYourFavCategories({key});

  final List<String> categories = [
    'Music',
    'Food & Drink',
    'Sports',
    'Charity & Causes',
  ];

  @override
  State<ChooseYourFavCategories> createState() =>
      _ChooseYourFavCategoriesState();
}

class _ChooseYourFavCategoriesState extends State<ChooseYourFavCategories> {
  Color color = Colors.grey;
  Color bColor = const Color.fromARGB(255, 59, 56, 221);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FindEvents(),
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     SizedBox(
      //       height: MediaQuery.of(context).size.height * 0.02,
      //     ),
      //     const SafeArea(
      //       child: Padding(
      //         padding: EdgeInsets.only(left: 12),
      //         child: Text(
      //           "You're interested in: ",
      //           style: TextStyle(
      //             fontSize: 32,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //     ),
      //     SizedBox(
      //       height: MediaQuery.of(context).size.height * 0.03,
      //     ),
      //      Expanded(
      //       child: const Categories(),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(
      //         horizontal: 25,
      //       ),
      //       child: Column(
      //         children: [
      //           AnimatedContainer(
      //             duration: const Duration(seconds: 2),
      //             curve: Curves.easeIn,
      //             decoration: BoxDecoration(
      //               color: Colors.grey,
      //               border: Border.all(),
      //             ),
      //             height: MediaQuery.of(context).size.height * 0.1,
      //             child: InkWell(
      //               onTap: () {},
      //               child: const Center(
      //                 child: Text(
      //                   'Next',
      //                   style: TextStyle(
      //                     fontSize: 28,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.02,
      //           ),
      //           const ButtonForCategoriesScreen(
      //             text: 'Skip',
      //           ),
      //           SizedBox(
      //             height: MediaQuery.of(context).size.height * 0.01,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
