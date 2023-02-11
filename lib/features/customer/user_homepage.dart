import 'package:flutter/material.dart';
import 'package:free_eats/common/custom_textfield.dart';
import 'package:free_eats/features/customer/drawer_customer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/custom_tile.dart';
import '../../constants/global_variables.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({super.key});

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
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
                        child: Image.asset('assets/images/logo.jfif'),
                        // padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(right: 0),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.manage_history_outlined,
                                      color: Colors.amber,
                                      size: 27,
                                    ))),

                            // Icon(Icons.search_outlined)
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      drawer: CustomDrawer(),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.amber,
                    ),
                    suffixIcon: Icon(
                      Icons.close,
                      color: Colors.amber,
                    ),
                    filled: true,
                    // hoverColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Search ",
                    hintStyle: GoogleFonts.oswald()),
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListCard(),
                  );
                  // Card(
                  //     child: ListTile(
                  //   title: Text("Drugs"),
                  //   subtitle: Text("Do It"),
                  //   // leading: Image.asset('assets/images/logo.png',height: 10,width: 10,),
                  //   trailing: Icon(Icons.arrow_forward_rounded),
                  //   onTap: () {},
                  // )
                  // );
                })
          ]),
        ),
      ),
    );
  }
}
