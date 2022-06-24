import 'package:flutter/material.dart';

class Democard extends StatefulWidget {
  Democard({Key? key}) : super(key: key);

  @override
  State<Democard> createState() => _DemocardState();
}

class _DemocardState extends State<Democard> {
  @override
  Widget build(BuildContext context) {
    List mydata = [
      {
        "name": "Mahmudul Hasan",
        "id": "104460",
        "jobtype": "Private Job Holder",
        "company": "Prime Bank Limited"
      },
      {
        "name": "Mahmudul Hasan",
        "id": "104460",
        "jobtype": "Private Job Holder",
        "company": "Prime Bank Limited"
      },
      {
        "name": "Mahmudul Hasan",
        "id": "104460",
        "jobtype": "Private Job Holder",
        "company": "Prime Bank Limited"
      },
      {
        "name": " Mehedi Hasan",
        "id": "104460",
        "jobtype": "Private Job Holder",
        "company": "Prime Bank Limited"
      },
      {
        "name": " Mehedi Hasan",
        "id": "104460",
        "jobtype": "Private Job Holder",
        "company": "Prime Bank Limited"
      }
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: mydata.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.6),
          ),
          itemBuilder: (BuildContext ctx, int index) {
            return Card(
              child: Container(
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
                                        mydata[index]['id'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        mydata[index]['jobtype'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        mydata[index]['company'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
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
    ));
  }
}
