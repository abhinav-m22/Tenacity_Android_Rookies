import 'package:flutter/material.dart';
import 'package:free_eats/features/customer/custom_food.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/custom_tile.dart';
import 'drawer_customer.dart';

class ListItemPage extends StatefulWidget {
  const ListItemPage({super.key});

  @override
  State<ListItemPage> createState() => _ListItemPageState();
}

class _ListItemPageState extends State<ListItemPage> {
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
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // color:Colors.amber
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_back_ios_new_outlined,
                                          color: Colors.amber,
                                          size: 27,
                                        ))),
                              ),

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
      body: Column(
        children: [
          Container(
            // color: Colors.blueGrey,
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      // color: Colors.amber,
                      child: Text('Restaurant Name',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.oswald(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w300)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      // color: Colors.red,
                      child: Text('This is description of the restaurant',
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.oswald(
                              color: Colors.black, fontSize: 15)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/a.avif"),
                    radius: 40,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  // padding: const EdgeInsets.only(left),
                  margin: const EdgeInsets.only(left: 100,right:100),
                  height: 40,
                  // width: MediaQuery.of(context).size.width*0.3,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber
                      ),
                  child: OutlinedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        primary: Colors.black12.withOpacity(0.03)),
                    onPressed: () {},
                    child: Text('Donate',
                          // overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.oswald(
                              color: Colors.white, fontSize: 20)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 50,),
          ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FoodItem(),
                  );
                 }),
          
        ],
      ),
    );
  }
}
