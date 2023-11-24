// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HelpUs extends StatefulWidget {
  const HelpUs({Key? key}) : super(key: key);

  @override
  State<HelpUs> createState() => _HelpUsState();
}

class _HelpUsState extends State<HelpUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Help us ",
            style: TextStyle(fontSize: 18),
          ),
          backgroundColor: const Color(0xff6b48ff),
        ),
        body: Center(
          child: ListView(
            children: [
              Container(
                  height: 350,
                  width: 370,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xff4A00E0), Color(0xff6b48ff)]),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade500,
                            offset: const Offset(7, 7),
                            blurRadius: 7)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/support.json',
                      ),
                      const Text(
                          "Dear user, to help us develop the product, send us your feedback and the problems you face.Thank you",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  )),
              Container(
                height: 200,
                margin: const EdgeInsets.all(20),
                // padding: EdgeInsets.all(10),
                child: TextFormField(
                  maxLines: 6,
                  cursorColor: const Color(0xff6b48ff),
                  cursorWidth: 3,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xff6b48ff)),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xff6b48ff)),
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Enter the massege....",
                      disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xff6b48ff)),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 145, right: 145, bottom: 25),
                height: 50,
                width: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6b48ff)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.send),
                      Text(
                        "Send",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  onPressed: () async {},
                ),
              ),
            ],
          ),
        ));
  }
}
