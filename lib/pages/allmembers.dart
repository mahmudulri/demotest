import 'package:flutter/material.dart';
import 'package:mydemo/demo.dart';
import 'package:mydemo/design/governingbody.dart';
import 'package:mydemo/design/customgridview.dart';

import '../design/customappbar.dart';
import '../design/membercard.dart';

class Allmembers extends StatelessWidget {
  const Allmembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: memberappsbar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Members",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            MygridMember(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: Text(
                  "Governing body",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/arrow.png",
                  height: 40,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Slide right to left",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            GoverningBody(),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
