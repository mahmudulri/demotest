import 'package:flutter/material.dart';

class GoverningBody extends StatelessWidget {
  List governingbody = [
    {"name": "Jubayer Hasan", "type": "Private Job Holder"},
    {"name": "Mahmudul Hasan", "type": "Govt Employee"},
    {"name": "Jahangir Hossain", "type": "Teacher"},
    {"name": "Feroz Ahmed", "type": "Farmer"},
  ];
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemCount: governingbody.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.grey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundImage: AssetImage(
                                              "assets/images/profilepic.png"),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              governingbody[index]['name'],
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            Icon(Icons.edit_calendar),
                                          ],
                                        ),
                                        Text(
                                          governingbody[index]['type'],
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
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
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 5,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
