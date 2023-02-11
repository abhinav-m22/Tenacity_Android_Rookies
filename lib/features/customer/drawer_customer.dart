import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:free_eats/common/profile_page.dart';
import 'package:free_eats/screens/auth_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      width: MediaQuery.of(context).size.width * 0.66,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 50),
            Row(
              children: [
                Container(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                          width: 160,
                          height: 45,
                          child: Image.asset('assets/images/logo2.png'),
                          // padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        ),
                    Container(height: 60),
                    // Text("Donate",
                    //     style: GoogleFonts.oswald(
                    //         fontSize: 25,
                    //         fontWeight: FontWeight.w300,
                    //         color: Colors.black)),
                    // Container(height: 18),
                    // Text("Donate",
                    //     style: GoogleFonts.oswald(
                    //         fontSize: 25,
                    //         fontWeight: FontWeight.w300,
                    //         color: Colors.black)),
                    // Container(height: 18),
                    // Text("Kids",
                    //     style: GoogleFonts.oswald(
                    //         fontSize: 25,
                    //         fontWeight: FontWeight.w300,
                    //         color: Colors.black)),
                  ],
                ),
              ],
            ),
            Container(height: 50),
            TextButton(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
              },
              child: Text("Profile",
                  style: GoogleFonts.oswald(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                
              },
              child: Text("Reviews",
                  style: GoogleFonts.oswald(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Colors.black)),
            ),
            
            TextButton(
              onPressed: () {},
              child: Text("Help",
                  style: GoogleFonts.oswald(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Colors.black)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("About Us",
                  style: GoogleFonts.oswald(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      color: Colors.black)),
            ),
            TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut()
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthScreen()));
                      }).onError((error, stackTrace)  {print("${error.toString()}");});
              },
              child: Text("Log Out",
                  style: GoogleFonts.oswald(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black)),
            ),
            Container(
              height: 20,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: Image.asset('assets/images/in.png'),
            //       iconSize: 40,
            //     ),
            //     Container(width: 15),
            //     IconButton(
            //       onPressed: () {},
            //       icon: Image.asset('assets/images/fb.png'),
            //       iconSize: 40,
            //     ),
            //     Container(width: 15),
            //     IconButton(
            //       onPressed: () {},
            //       icon: Image.asset('assets/images/tw.png'),
            //       iconSize: 40,
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
