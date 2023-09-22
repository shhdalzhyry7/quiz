import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';

void main() {
  runApp(m());
}

class m extends StatefulWidget {
  const m({super.key});

  @override
  State<m> createState() => _mState();
}

class _mState extends State<m> {
  @override

  
  Widget build(BuildContext context) {
    TextEditingController n = TextEditingController();
    TextEditingController r = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: ListView(
          children: [
            mytextfeild(Text("number1"), Color.fromARGB(72, 190, 181, 154), n,
                false, "enter n"),
            mytextfeild(Text("result"), Colors.white10, r, true, ""),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myelevatedbuttn(r, n, "تحويل الموجب الى سالب والعكس", () {
                  r.text = (int.parse(n.text) * int.parse(n.text) -
                          1 * int.parse(n.text) -
                          1 * int.parse(n.text) * int.parse(n.text))
                      .toString();
                }),
                myelevatedbuttn(
                  r,
                  n,
                  " المضروب",
                  () {
                    int fact = 1;
                    for (int i = 1; i <= int.parse(n.text); i++) {
                      r.text = (fact = fact * i).toString();
                    }
                  },
                ),
                myelevatedbuttn(
                  r,
                  n,
                  "مضاعف العدد",
                  () {
                    for (int x = 1; x <= int.parse(n.text); x++) {
                      r.text = (int.parse(n.text)+int.parse(n.text)).toString();
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding myelevatedbuttn(
      TextEditingController r, TextEditingController n, txt, press) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: press, child: Text(txt)),
    );
  }
}

Padding mytextfeild(lab, col, contro, bool b, hin) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      readOnly: b,
      controller: contro,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        label: lab,
        hintText: hin,
        fillColor: col,
        filled: true,
        prefixIcon: Icon(Icons.numbers),
      ),
    ),
  );
}
