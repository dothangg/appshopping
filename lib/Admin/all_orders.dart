// import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoppingappp/services/database.dart';
import 'package:shoppingappp/widget/support_widget.dart';

class AllOrders extends StatefulWidget {
  const AllOrders({super.key});

  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  Stream? orderStream;

  getOnTheLoad()async {
    orderStream = await DatabaseMethods().allOrders();
    setState(() {});
  }

  @override
  void initState() {
    getOnTheLoad();
    super.initState();
  }

  Widget allOrders() {
    return StreamBuilder(
        stream: orderStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                ds["Image"],
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name : " + ds["Name"],
                                      style: AppWidget.semiboldTextFieldStyle(),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name : " + ds["Name"],
                                      style: AppWidget.semiboldTextFieldStyle(),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      child: Text(
                                        "Email : " + ds["Email"],
                                        style: AppWidget.lightTextFieldStyle(),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      ds["Product"],
                                      style: AppWidget.semiboldTextFieldStyle(),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "\$" + ds["Price"],
                                      style: TextStyle(
                                          color: Color(0xFFfd6f3d),
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        await DatabaseMethods().updateStatus(ds.id);
                                        setState(() {

                                        });
                                      },
                                      child: Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFfd6f3e),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            "Done",
                                            style: AppWidget
                                                .semiboldTextFieldStyle(),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "All Orders",
            style: AppWidget.boldTextFieldStyle(),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only( left: 20, right: 20),
        child: Column(
          children: [
            Expanded(child: allOrders(),),
          ],
        ),
      ),
    );
  }
}
