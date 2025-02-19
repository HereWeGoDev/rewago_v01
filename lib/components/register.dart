import 'package:flutter/material.dart';
import 'package:rewago_v01/manager/manager_home.dart';
import 'package:rewago_v01/seller/seller_home..dart';
import 'package:rewago_v01/util/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageeState();
}

class _RegisterPageeState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
          child: Padding(padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("hi,", style: TextStyle(fontSize: 40),),
              Text("Welcome to Rewago!"),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  labelText: "Name",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  border: OutlineInputBorder(),
                  labelText: "Email Address"
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  border: OutlineInputBorder(),
                  labelText: "Phone Number"
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  border: OutlineInputBorder(),
                  labelText: "Warehouse Location"
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  border: OutlineInputBorder(),
                  labelText: "Password"
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 400,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ManagerHome()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
                    child: Text(
                      "Agent",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                    SizedBox(width: 20),
                    ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SellerHome()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
                    child: Text(
                      "Seller",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                  ],
                )
              ),
            ],
          ),),
        ),
      );
  }
}