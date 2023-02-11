import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )),
        onPressed: () {},
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 1,
            height: 110,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/a.avif',
                      // width: MediaQuery.of(context).size.width*.4,
                      // height: MediaQuery.of(context).size.height*.5,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Restaurant Name',
                          style: GoogleFonts.oswald(
                              color: Colors.black, fontSize: 18)),
                    ),
                    Text('This is decription of the restaurant',
                        style: GoogleFonts.oswald(
                            color: Colors.black, fontSize: 16)),
                  ],
                ),
              ],
            )));
  }
}
