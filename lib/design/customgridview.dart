import 'package:flutter/material.dart';

class MygridMember extends StatelessWidget {
  List mydata = [
    {
      "name": "Mahmudul Hasan",
      "id": "104460",
      "jobtype": "Private Job Holder",
      "company": "Prime Bank Limited",
      "status": "online"
    },
    {
      "name": "Abdur Rahman",
      "id": "652014",
      "jobtype": "Private Job Holder",
      "company": "AB Bank Limited",
      "status": "offline"
    },
    {
      "name": "MD Sakhawat Hossain",
      "id": "301785",
      "jobtype": "Private Job Holder",
      "company": "Agrani Bank Limited",
      "status": "offline"
    },
    {
      "name": "Salman Muktadir",
      "id": "654123",
      "jobtype": "Private Job Holder",
      "company": "Rupali Bank Limited",
      "status": "offline"
    }
  ];

  bool isOnline = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: mydata.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.6)),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            mydata[index]['status'] == "online"
                                                ? Colors.green
                                                : Colors.white,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1,
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
                                        mydata[index]['name'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "NID : ${mydata[index]['id']}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        mydata[index]['jobtype'],
                                        style: TextStyle(),
                                      ),
                                      Text(
                                        mydata[index]['company'],
                                        style: TextStyle(),
                                      ),
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
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
