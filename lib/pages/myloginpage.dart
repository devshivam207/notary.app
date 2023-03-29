import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:stocklive/controller/controller.dart';
import 'package:stocklive/pages/myfirstpage.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final dio = Dio();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height / 3,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(left: 40, right: 40),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              fillColor: Colors.blue,
                              hintText: "Enter Email",
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)))),
                        )),
                    InkWell(
                      onTap: () {
                        // MyController().getdata();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => MyFirstPage())));
                      },
                      child: Container(
                        width: width / 6,
                        height: height / 20,
                        margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 83, 175, 149),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                          textScaleFactor: 1,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
