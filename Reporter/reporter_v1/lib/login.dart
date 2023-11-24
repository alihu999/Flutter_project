import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'writearticle.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        reverse: true,
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xff4A00E0), Color(0xff6b48ff)]),
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 129, 127, 127),
                    offset: Offset(0, 0),
                    blurRadius: 40)
              ]),
          height: 600,
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.login,
                color: Colors.white,
                size: 60,
              ),
              const Text(
                "Login ",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Container(
                  margin: const EdgeInsets.all(25),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                      onChanged: (text) {
                        setState(() {});
                      },
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "E-Mail ",
                            style: TextStyle(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.white))))),
              Container(
                  margin: const EdgeInsets.all(25),
                  child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      onChanged: (text) {
                        setState(() {});
                      },
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Password",
                            style: TextStyle(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.white))))),
              Container(
                height: 50,
                width: 100,
                margin: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.login,
                        color: Color(0xff6b48ff),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(color: Color(0xff6b48ff)),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).push(PageTransition(
                        child: const WriteArticle(),
                        type: PageTransitionType.leftToRight,
                        duration: const Duration(milliseconds: 700)));
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
