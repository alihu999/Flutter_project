import 'package:flutter/material.dart';

class SelectInterest extends StatefulWidget {
  const SelectInterest({super.key});

  @override
  State<SelectInterest> createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
  bool policy = true;
  bool economic = true;
  bool sport = true;
  bool whethar = true;
  bool scientific = true;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: const Color(0xff6b48ff),
      textColor: const Color(0xff6b48ff),
      backgroundColor: Colors.grey[200],
      trailing: const Icon(Icons.interests),
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text(
        "اختر نوع المقالات التي ترغب  في استعراضها",
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 16),
      ),
      children: [
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            secondary: policy
                ? const Icon(
                    Icons.policy,
                    color: Color(0xff6b48ff),
                    size: 30,
                  )
                : const Icon(
                    Icons.policy,
                    size: 30,
                  ),
            activeColor: const Color(0xff6b48ff),
            title: const Text(
              "سياسة",
              textAlign: TextAlign.right,
            ),
            value: policy,
            onChanged: (val) async {
              setState(() {
                policy = val!;
              });
            }),
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            secondary: economic
                ? const Icon(
                    Icons.account_balance,
                    color: Color(0xff6b48ff),
                    size: 30,
                  )
                : const Icon(
                    Icons.account_balance,
                    size: 30,
                  ),
            activeColor: const Color(0xff6b48ff),
            title: const Text(
              "اقتصاد",
              textAlign: TextAlign.right,
            ),
            value: economic,
            onChanged: (val) {
              setState(() {
                economic = val!;
              });
            }),
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            secondary: sport
                ? const Icon(
                    Icons.sports,
                    color: Color(0xff6b48ff),
                    size: 30,
                  )
                : const Icon(
                    Icons.sports,
                    size: 30,
                  ),
            activeColor: const Color(0xff6b48ff),
            title: const Text(
              "رياضة",
              textAlign: TextAlign.right,
            ),
            value: sport,
            onChanged: (val) {
              setState(() {
                sport = val!;
              });
            }),
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            secondary: whethar
                ? const Icon(
                    Icons.sunny,
                    color: Color(0xff6b48ff),
                    size: 30,
                  )
                : const Icon(
                    Icons.sunny,
                    size: 30,
                  ),
            activeColor: const Color(0xff6b48ff),
            title: const Text(
              "طقس",
              textAlign: TextAlign.right,
            ),
            value: whethar,
            onChanged: (val) {
              setState(() {
                whethar = val!;
              });
            }),
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            secondary: scientific
                ? const Icon(
                    Icons.science,
                    color: Color(0xff6b48ff),
                    size: 30,
                  )
                : const Icon(
                    Icons.science,
                    size: 30,
                  ),
            activeColor: const Color(0xff6b48ff),
            title: const Text(
              "علوم",
              textAlign: TextAlign.right,
            ),
            value: scientific,
            onChanged: (val) {
              setState(() {
                scientific = val!;
              });
            }),
      ],
    );
  }
}
