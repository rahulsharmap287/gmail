import 'dart:math';

import 'package:flutter/material.dart';

import 'bottom.dart';
import 'meeting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textController = TextEditingController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          controller: _textController,
                          decoration: InputDecoration(
                            hintText: 'Search in emails',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
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
                                              color: Colors.yellow,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'g',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20),
                                        ),
                                        Text(
                                          'l',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 20),
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
                                                color: Colors.white,
                                                fontSize: 23),
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
                                      Container(
                                        height: 65,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18),
                                              child: CircleAvatar(
                                                backgroundColor: Colors.green,
                                                child: Text(
                                                  "R",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 200, top: 10),
                                                  child: Text(
                                                    'Rahul Sharma',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 85),
                                                  child: Text(
                                                      "rahulsharmap9988@gmail.com"),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        color: Colors.white,
                                      ),
                                      Container(
                                        height: 65,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.deepOrange,
                                                child: Text(
                                                  "M",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 200, top: 10),
                                                  child: Text(
                                                    'Mohit R',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 85),
                                                  child: Text(
                                                      "mohitraja12@gmail.com"),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        color: Colors.white,
                                      ),
                                      Container(
                                        height: 65,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 18),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Colors.redAccent,
                                                child: Text(
                                                  "P",
                                                  style: TextStyle(
                                                      fontSize: 23,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 200, top: 10),
                                                  child: Text(
                                                    'Prerit Saini',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 85),
                                                  child: Text(
                                                      "prerisaini178@gmail.com"),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        color: Colors.white,
                                      ),
                                      ListTile(
                                        title: Text(
                                          'Add another account',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        leading:
                                            Icon(Icons.person_search_outlined),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Privacy policy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
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
                                              color: Colors.black,
                                              fontSize: 10),
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
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 5),
                  Text(
                    'Primary',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 07),
                      child: ListTile(
                        title: Text(
                          messages[index]["title"]!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  messages[index]["body"]!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 12),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(messages[index]["message"]!),
                              ],
                            ),
                          ],
                        ),
                        leading: Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors
                                    .primaries[
                                        Random().nextInt(Colors.primaries.length)]
                                    .shade400,
                                radius: 20,
                                child: Text(
                                  messages[index]["title"]![0],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(messages[index]["date"]!),
                            Icon(Icons.star_outline),
                          ],
                        ),
                        onTap: () {
                          print("Clicked on an list tile");
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.deepOrange[50],
          child: ListView(
            padding: EdgeInsets.all(5.0),
            children: [
              ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ),
              ),
              Divider(height: 1),
              ListTile(
                leading: Icon(Icons.library_books_outlined),
                title: Text('All inbox'),
                onTap: () {},
              ),
              Divider(height: 1),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text('Primary'),
                trailing: Container(
                  alignment: AlignmentDirectional.center,
                  width: 50,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey),
                  child: Text('  1 new  '),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.local_offer_outlined),
                title: Text('Promotions'),
                trailing: Container(
                  alignment: AlignmentDirectional.center,
                  width: 50,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green[400]),
                  child: Text('  31 new '),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.people_alt_outlined),
                title: Text('Social'),
                trailing: Container(
                  alignment: AlignmentDirectional.center,
                  width: 50,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue[300]),
                  child: Text('  10 new '),
                ),
                onTap: () {},
              ),
              Row(
                children: [
                  SizedBox(width: 14),
                  Text(
                    'All lables',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              ...List.generate(
                icons.length,
                (index) => ListTile(
                  leading: Icon(icons[index]),
                  title: Text(title[index]),
                  trailing: Text(trailing[index]),
                  onTap: () {},
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 14),
                  Text(
                    'Google apps',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.calendar_month_outlined),
                title: Text('Calendar'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text('Contacts'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.question_mark_rounded),
                title: Text('Help and feedback'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.create),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[50],
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Badge(label: Text('99+'), child: Icon(Icons.mail_outline)),
              onPressed: () {},
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.videocam_outlined),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Meeting()));
              },
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  List<String> trailing = [
    '',
    '',
    '5',
    '',
    '',
    '',
    '',
    '143',
    '12',
    '',
  ];

  List<IconData> icons = [
    Icons.star_outline,
    Icons.watch_later_outlined,
    Icons.label_important_outline,
    Icons.send,
    Icons.send_and_archive_outlined,
    Icons.outbox_outlined,
    Icons.drafts_outlined,
    Icons.mail_outline,
    Icons.report_gmailerrorred,
    Icons.delete_outline,
  ];

  List<String> title = [
    "Starred",
    "Snoozed",
    "Important",
    "Sent",
    "Scheduled",
    "Outbox",
    "Drafts",
    "All mails",
    "Spam",
    "Bin",
  ];

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
