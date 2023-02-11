import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:free_eats/features/customer/provider_food_profile.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
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
        onPressed: () {
          
        },
        child: Container(
            decoration: BoxDecoration(
                // boxShadow: [BoxShadow(blurRadius: 1,blurStyle: BlurStyle.outer)],
                border: Border.all(color: Colors.amber),
                borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width * 1,
            height: 110,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 8, bottom: 8, right: 15),
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
                    Container(
                      padding: const EdgeInsets.only(top: 8.0),
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text('Food Name',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.oswald(
                              color: Colors.black, fontSize: 18)),
                    ),
                    Container(
                      // color: Colors.amber,
                      // padding: const EdgeInsets.only(right:10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.shopping_basket_outlined,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(width: 2,),
                                  Text('10',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.oswald(
                                          color: Colors.black, fontSize: 15)),
                                ],
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.amber,)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
