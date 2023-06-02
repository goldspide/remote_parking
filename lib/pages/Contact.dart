import 'package:flutter/material.dart';
import 'package:park/components/screen_buttom.dart';
import 'package:park/pages/widget/big_text.dart';
import 'package:park/pages/widget/small_text.dart';
import 'package:park/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final parking = [
    {
      'nom': 'Parking sotraci',
      'localisation': '',
      'rating': 3.4,
      'distance': '3.4km',
      'image':'non.jpg',
      'status': 'ouvert',
      'etat' : 'verifier',
      'information': 'nous offrent des stationement de nuit'
    },
    {
      'nom': 'Garage Japonais',
      'localisation': '',
      'rating': 3.2,
      'distance': '1.4km',
      'image':'tous.jpg',
      'status': 'ouvert',
      'etat' : 'verifier',
      'information': 'Nos parking couvert sont  disponible 24/24 sonr a votre service'
    },
    {
      'nom': 'PARKING',
      'localisation': '',
      // 'rating': 4.2,
      'distance': '7,9km',
      'image':'default.png',
      'status': 'ouvert',
      'etat' : 'verifier',
      'information': 'Nous avons des place pour tous type de vehicle'
    },
    {
      'nom': 'PARKING EMC-MBIENG',
      'localisation': '',
      'rating': 3.1,
      'distance': '6.7km',
      'image':'default.png',
      'status': 'ouvert',
      'etat' : 'nonverifier',
      'information': 'les meilleur parking dans votre localite ce trouve chez nous'
    },
    {
      'nom': 'Parking Bolloré',
      'localisation': 'Kassalafam II',
      'rating': 3.7,
      'distance': '7,9km',
      'image':'default.png',
      'status': 'ouvert',
      'etat' : 'verifier',
      'information': 'Nous gardons votre vehicle pendant votre sommeil pour vous facilite la vie'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Uri phoneNumber = Uri.parse("tel:+237676155500");
    final Uri whatsapp = Uri.parse("https://chat.whatsapp.com/CAnsZckF5C4AzQu24zPqEC");
    return Column(
      children: [
        Stack(
          children: [
            const CallButtom(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: const EdgeInsets.only(top: 220),
                  child: BigText(text: "Contact", color: Colors.white)),
            ),
          ],
        ),


        Container(
          height: 700,
          child: ListView.builder(
              itemCount: parking.length,
              //shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final parks = parking[index];
                final nom = parks['nom'];
                final image = parks['image'];
                final distance = parks['distance'];
                final Object? rating = parks['rating'];
                final local = parks['localisation'];
                final status = parks['status'];
                final etat = parks['etat'];
                final info = parks['information'];
                final int A = 4;

                return Container(
                  margin:
                      const EdgeInsets.only(left: 25, right: 20, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/$image"),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          // width: 195,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "$nom"),
                                const SizedBox(
                                  height: 10,
                                ),
                                SmallText(
                                  text: "$local",
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 2, left: 1),
                                      child: IconButton(
                                          onPressed: () async {
                                            print(canLaunchUrl(phoneNumber));
                                          },
                                          icon: const Icon(
                                            Icons.phone,
                                            size: 22,
                                            color: Colors.green,
                                          )),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, right: 30),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: IconButton(
                                          onPressed: () async {
                                            launchUrl(whatsapp);
                                          },
                                          icon: const Icon(
                                            Icons.message,
                                            color: Colors.green,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
