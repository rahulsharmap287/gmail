import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmail2/joinmeet.dart';
import 'package:gmail2/main.dart';

class Meeting extends StatefulWidget {
  const Meeting({super.key});

  @override
  State<Meeting> createState() => _MeetingState();
}

List<String> images = [
  "  https://wallpapers.com/images/featured/hd-a5u9zq0a0ymy2dug.webp    "
      "     "
];

class _MeetingState extends State<Meeting> {
  @override
  void _onItemTapped(int index) {
    setState(() {
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                      child: Icon(Icons.menu),
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  }),
                  Text(
                    "Meet",
                    style: TextStyle(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          insetPadding: EdgeInsets.all(10),
                          backgroundColor: Colors.indigo[50],
                          actionsPadding: EdgeInsets.all(5),
                          actions: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Container(
                                    child: Row(
                                  children: [
                                    Text(
                                      'G',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                    Text(
                                      'o',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                    Text(
                                      'o',
                                      style: TextStyle(
                                          color: Colors.yellow, fontSize: 20),
                                    ),
                                    Text(
                                      'g',
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    ),
                                    Text(
                                      'l',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 20),
                                    ),
                                    Text(
                                      'e',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Rahul Sharma',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('rahulsharmap287@gmail.com'),
                                        SizedBox(height: 19),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.grey)),
                                          child: Text(
                                              ' Manage your Google Account  '),
                                        ),
                                        SizedBox(height: 15),
                                      ],
                                    ),
                                    trailing: Text('10'),
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        'R',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 23),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.indigo[50],
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Storage used: 24% of 64 GB',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    leading: Icon(
                                      Icons.cloud_outlined,
                                      size: 17,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.indigo[50],
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Add another account',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    leading: Icon(Icons.person_search_outlined),
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Manage accounts on this device',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    leading: Icon(Icons.person_2_outlined),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Privacy policy',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
                                    )),
                                Icon(
                                  Icons.circle,
                                  size: 10,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Terms of service',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 10),
                                    )),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.blue[500],
                      radius: 20,
                      child: Text(
                        'R',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 50,
                width: 220,
                child: Center(
                    child: Text(
                  'New meeting',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.brown,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 50,
                  width: 220,
                  child: Center(
                      child: Text(
                    'Join with a code',
                    style: TextStyle(fontSize: 17, color: Colors.brown),
                  )),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Join()));
                },
              ),


            ],
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            height: 450,
            width: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.ibb.co/RSMYMqv/Whats-App-Image-2024-03-29-at-7-51-24-PM.jpg'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(),
                child: Text(
                  "Gmail",
                  style: TextStyle(fontSize: 30, color: Colors.red.shade500),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.filter),
              title: Text("All inboxes"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.star),
              trailing: Container(
                height: 29,
                width: 50,
                child: Center(
                    child: Text(
                  "1 new",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.shade200),
              ),
              title: Text("Primary"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.local_offer_outlined),
              trailing: Container(
                height: 29,
                width: 72,
                child: Center(
                    child: Text(
                  "241 new",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent.shade400),
              ),
              title: Text("Promotion"),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.contact_mail_outlined),
              title: Text("Social"),
              trailing: Text(
                "+99",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Text("All Labels")),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Started"),
              trailing: Text(
                "11",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time_rounded),
              title: Text("Snoozed"),
            ),
            ListTile(
              leading: Icon(Icons.label_important_outline_sharp),
              title: Text("Important"),
              trailing: Text(
                "9",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(Icons.near_me),
              title: Text("Sent"),
            ),
            ListTile(
              leading: Icon(Icons.send_and_archive_outlined),
              title: Text("Scheduled"),
            ),
            ListTile(
              leading: Icon(Icons.send_time_extension_outlined),
              title: Text("Outbox"),
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file_outlined),
              title: Text("Draft"),
            ),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.mail_outline_outlined),
                title: Text("All mail"),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.info_outline),
                title: Text("Spam"),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.delete_forever_outlined),
                title: Text("Bin"),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Text("Google apps")),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.calendar_today),
                title: Text("Calander"),
              ),
            ),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.account_circle_outlined),
                title: Text("Contact"),
              ),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.feedback),
                title: Text("FeedBack"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.question_mark),
                title: Text("FAQ"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Donate"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[50],

        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Badge(label: Text('99+'),
                  child: Icon(Icons.mail_outline)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => MyApp()));
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.videocam_outlined),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => Meeting()));
              },
            ),
            label: '',
          ),
        ],
        onTap: _onItemTapped,

      ),

    );
  }

}
