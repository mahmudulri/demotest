import 'package:flutter/material.dart';
import 'package:mydemo/design/customappbar.dart';
import 'package:mydemo/pages/members.dart';

class Bazar extends StatefulWidget {
  const Bazar({Key? key}) : super(key: key);

  @override
  State<Bazar> createState() => _BazarState();
}

class _BazarState extends State<Bazar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: memberappsbar(),
      body: Center(
          child: mycard(
        "Mahmudul Hasan",
        "NID :25214 ",
        "Private Job Holder",
        "Prime Bank Limited",
      )),
    );
  }

  Widget mycard(String name, String nid, String position, String company) {
    return Card(
      child: Container(
        height: 270,
        width: 180,
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person),
                          Spacer(),
                          Icon(Icons.delete),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "assets/images/profilepic.png")),
                              Text(
                                name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(nid),
                              SizedBox(
                                height: 10,
                              ),
                              Text(position),
                              Text(company),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey,
                  child: Container(
                    color: Color(0xffF6F6F6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.call,
                        ),
                        Icon(
                          Icons.message,
                        ),
                        Icon(
                          Icons.edit_calendar_rounded,
                        ),
                        Icon(
                          Icons.person,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
