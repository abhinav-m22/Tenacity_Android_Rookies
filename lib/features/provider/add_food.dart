import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
 
class InsertData extends StatefulWidget {
  const InsertData({Key? key}) : super(key: key);
 
  @override
  State<InsertData> createState() => _InsertDataState();
}
 
class _InsertDataState extends State<InsertData> {
  
  final  foodNameController = TextEditingController();
  final  foodQuantityController= TextEditingController();
  final  foodExpiryController =TextEditingController();
  final  foodTypeController =TextEditingController();
  final  foodAgeController =TextEditingController();
  final  locationController =TextEditingController();
 
  late DatabaseReference dbRef;
 
  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Food');
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inserting data'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Add Food Item Details',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: foodNameController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Food Name',
                    hintText: 'Enter Name',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: foodQuantityController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Quantity',
                    hintText: 'Enter No. of food items',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: foodTypeController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type of Food',
                    hintText: 'Veg/Non-Veg',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: locationController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Location',
                    hintText: 'Enter Location',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: foodAgeController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age of Food',
                    hintText: 'Enter Age of Food',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Map<String, String> food_details = {
                      'name': foodNameController.text,
                      'age': foodAgeController.text,
                      'location': locationController.text,
                      'type': foodTypeController.text,
                      'expiry':foodExpiryController.text,
                      'quantity':foodQuantityController.text,

                    };
       
  
                    dbRef.push().set(food_details);
       
                  },
                  child: const Text('Upload'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 