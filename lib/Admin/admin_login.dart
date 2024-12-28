import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoppingappp/Admin/home_admin.dart';

import '../widget/support_widget.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {

  TextEditingController userNameController = new TextEditingController();
  TextEditingController userPasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
          EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/login.png"),
              Center(
                child: Text(
                  "Admin Panel",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "UserName",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: userNameController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "UserName"),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Password",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    obscureText: true,
                    controller: userPasswordController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Password"),
                  )),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  loginAdmin();
                },
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then( (snapshot){
      snapshot.docs.forEach((result){
        if(result.data()['username'] != userNameController.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Your id is not correct",
                style: TextStyle(fontSize: 20.0),
              )));
        }else if(result.data()['password'] != userPasswordController.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Your password is not correct",
                style: TextStyle(fontSize: 20.0),
              )));
        }else{
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeAdmin()));
        }
      });
    });
  }

}
