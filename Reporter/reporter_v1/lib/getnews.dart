import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:reporter_v1/fullnews.dart';

class GetNews extends StatefulWidget {
  const GetNews({super.key});

  @override
  State<GetNews> createState() => _GetNewsState();
}

class _GetNewsState extends State<GetNews> {
  Stream<QuerySnapshot> articlesref =
      FirebaseFirestore.instance.collection("home").snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: articlesref,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return Container(
                margin: const EdgeInsets.all(25),
                child: Material(
                  color: const Color(0xff6b48ff),
                  elevation: 8,
                  borderRadius: BorderRadius.circular(28),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Ink.image(
                          image: NetworkImage(
                            "${data['urlimage']}",
                          ),
                          fit: BoxFit.cover,
                          height: 250,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${data['title']}",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(PageTransition(
                          child: FullNews(
                              "${data['urlimage']}",
                              "${data['title']}",
                              "${data['news']}",
                              "${data['journalist']}"),
                          type: PageTransitionType.scale,
                          alignment: Alignment.bottomCenter,
                          duration: const Duration(milliseconds: 1000)));
                    },
                  ),
                ),
              );
            }).toList());
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
