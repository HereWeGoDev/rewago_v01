import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rewago_v01/components/register.dart';
import 'package:rewago_v01/manager/manager_home.dart';
import 'package:rewago_v01/seller/seller_home..dart';
import 'package:rewago_v01/util/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "hi,",
                style: TextStyle(fontSize: 40),
              ),
              Text("Welcome back :)"),
              SizedBox(height: 50),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  labelText: "Email",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    border: OutlineInputBorder(),
                    labelText: "Password"),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: Row(
                  children: [
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
                          "Seller Sign In",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                        SizedBox(width: 10),
                        ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ManagerHome()));
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
                          "Agent Sign In ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text("Or login with"),
              SizedBox(height: 15),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 15),
                      SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: null,
                            style: ElevatedButton.styleFrom(
                                disabledBackgroundColor: AppColors.primary,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10)),
                            child: FaIcon(FontAwesomeIcons.google, size: 24, color: Colors.white,)),
                      ),
                      SizedBox(width: 7),
                      SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: null,
                            style: ElevatedButton.styleFrom(
                                disabledBackgroundColor: AppColors.primary,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 2)),
                            child: FaIcon(FontAwesomeIcons.apple, size: 35, color: Colors.white,)),
                      ),
                      SizedBox(width: 7),
                      SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10)),
                            child: Icon(Iconsax.call, size: 30, color: Colors.white,)),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
