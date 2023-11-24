import 'package:flutter/material.dart';

class WriteArticle extends StatefulWidget {
  const WriteArticle({super.key});

  @override
  State<WriteArticle> createState() => _WriteArticleState();
}

class _WriteArticleState extends State<WriteArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 1,
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
                      hintText: "Enter the article title",
                      disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xff6b48ff)),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
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
                      hintText: "Enter the Aruicle....",
                      disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xff6b48ff)),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 50,
                width: 100,
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
        ),
      ),
    );
  }
}
