import 'package:flutter/material.dart';
import 'package:park/pages/HomePage.dart';
import 'package:park/utils/colors.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pureColor,
      body: Container(
        // margin: EdgeInsets.all(20),
        padding: const EdgeInsets.only(left: 130,top: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

             const Image(image: NetworkImage('https://media.tenor.com/103uSj0uVP8AAAAM/japan-mdk.gif')),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                   context,
                   PageRouteBuilder(
                       pageBuilder: (
                           _,
                           __,
                           ___,
                           ) =>
                       const  HomePage()),
                 );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  side: BorderSide.none,
                  shape: const StadiumBorder()),
              child:const Text("Commence",
                  style: TextStyle(color: Colors.black)),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Container(
            //     padding: EdgeInsets.only(),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(75),
            //       color: Colors.white,
            //     ),
            //     child:Column(
            //       children: const [
            //         Text("Commence", style: TextStyle(color: Colors.black))
            //       ],
            //     ),
            //   ),
            // )

          ],
        ),
      ),
    );
  }
}
