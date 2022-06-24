import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  const Members({Key? key}) : super(key: key);

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Mahmudul hasan",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Spacer(),
            Text(
              "Members",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Spacer(),
            Icon(
              Icons.notification_important,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.qr_code,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.menu_open_sharp,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Members",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            mydesign(),
            SizedBox(
              height: 20,
            ),
            mydesign(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Governing body",
                style: TextStyle(
                  fontSize: 25,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  mycontainer(),
                  mycontainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mydesign() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Container(
            height: 300,
            width: 180,
            color: Colors.white60,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/profilepic.png")),
                      Text(
                        "Mahmudul Hasan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("NID: 102454"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Private Job Holder"),
                      Text("Prime Bank Limited"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
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
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Card(
          child: Container(
            height: 300,
            width: 180,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/profilepic.png")),
                      Text("Mahmudul"),
                      Text("NID: 102454"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Private Job Holder"),
                      Text("Prime Bank Limited"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget mycontainer() {
    return Container(
      height: 200,
      width: 420,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              AssetImage("assets/images/profilepic.png"),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Mahmudul Hasan",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Icon(Icons.edit_calendar),
                          ],
                        ),
                        Text(
                          "House owner",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              child: Center(
                child: Icon(
                  Icons.call,
                  size: 60,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
