// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:free_eats/common/custom_textfield.dart';
import 'package:free_eats/features/customer/custom_food.dart';
import 'package:free_eats/features/customer/drawer_customer.dart';

import '../../common/custom_tile.dart';
import '../../constants/global_variables.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController _searchController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            child: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  icon:
                      Icon(Icons.sort_outlined, color: Colors.amber, size: 27),
                  onPressed: () {
                    if (scaffoldKey.currentState!.isDrawerOpen) {
                      scaffoldKey.currentState!.closeDrawer();
                      //close drawer, if drawer is open
                    } else {
                      scaffoldKey.currentState!.openDrawer();
                      //open drawer, if drawer is closed
                    }
                  },
                ),
              ),
              // iconTheme: const IconThemeData(
              //   color: Colors.amber,

              // ),

              elevation: 0,
              flexibleSpace: Container(
                // padding: const EdgeInsets.only(top:50),
                decoration: const BoxDecoration(
                  // gradient: GlobalVariables.signInGradient,
                  color: Colors.white,
                ),
              ),
              title: SizedBox(
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          height: 45,
                          child: Image.asset('assets/images/logo2.png'),
                          // padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 15, right: 10),
                          child: Row(
                            children: [
                              // Container(
                              //   decoration: BoxDecoration(
                              //       shape: BoxShape.circle,
                              //       color: Colors.amber),
                              //   child: Padding(
                              //       padding: const EdgeInsets.only(right: 0),
                              //       child: IconButton(
                              //           onPressed: () {},
                              //           icon: Icon(
                              //             Icons.manage_history_outlined,
                              //             color: Colors.white,
                              //             size: 27,
                              //           ))),
                              // ),

                              // Icon(Icons.search_outlined)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
      drawer: Drawer(child: CustomDrawer()),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            SizedBox(
              height: 18,
            ),
            Container(
                          // width: 120,
                          // height: 45,
                          child: Image.asset('assets/images/2.jpg'),
                          // padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.auto_graph_outlined,
                                color: Colors.amber, size: 40),
                            Text("Analytics",
                                style: GoogleFonts.oswald(
                                    color: Colors.black, fontSize: 16)),
                          ],
                        ))),
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.people_alt_outlined,
                                color: Colors.amber, size: 40),
                            Text("Users",
                                style: GoogleFonts.oswald(
                                    color: Colors.black, fontSize: 16)),
                          ],
                        ))),
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.local_mall_outlined,
                                color: Colors.amber, size: 40),
                            Text("Orders",
                                style: GoogleFonts.oswald(
                                    color: Colors.black, fontSize: 16)),
                          ],
                        ))),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.food_bank_outlined,
                                color: Colors.amber, size: 40),
                            Text("Providers",
                                style: GoogleFonts.oswald(
                                    color: Colors.black, fontSize: 16)),
                          ],
                        ))),
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.domain_verification_outlined,
                                color: Colors.amber, size: 40),
                            Text("Requests",
                                style: GoogleFonts.oswald(
                                    color: Colors.black, fontSize: 16)),
                          ],
                        ))),
                 ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 1,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.auto_graph_outlined,
                                color: Colors.amber, size: 40),
                            Text("Extra",
                                style: GoogleFonts.oswald(
                                    color: Colors.black, fontSize: 16)),
                          ],
                        ))),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class AdminButton extends StatelessWidget {
  String text;
  AdminButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 1,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              )),
          onPressed: () {},
          child: Container(
              padding: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.2,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit, color: Colors.amber, size: 40),
                  Text(text,
                      style: GoogleFonts.oswald(
                          color: Colors.black, fontSize: 16)),
                ],
              ))),
    );
  }
}
