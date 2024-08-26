import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/hand.svg',
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Hello, Habibur",
                  style: GoogleFonts.lato(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            width: 400,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 249, 255, 158),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/coin.svg',
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "850",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Awards",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                )
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildYoutubePremiumContainer(),
                const SizedBox(width: 30),
                buildYoutubePremiumContainer(),
                const SizedBox(width: 30),
                buildYoutubePremiumContainer(),
                const SizedBox(width: 30),
                buildYoutubePremiumContainer(),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 70,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
            child: const Center(
                child: Text(
              "Scan",
              style: TextStyle(color: Colors.white, fontSize: 15),
            )),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent activity",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: const Offset(0, 2)),
                  ],
                ),
                child: ListTile(
                  title: Text('Activity ${index + 1}'),
                  leading: const Icon(Icons.history),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget buildYoutubePremiumContainer() {
    return Container(
      height: 300,
      width: 230,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 17, 0),
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(
                Icons.play_arrow,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 165),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 51, 51, 51),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Youtube Premium",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text("Buy Youtube Premium With 10% Discount"),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 10),
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 165, 255, 92),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(child: Text('270')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
