import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Join extends StatefulWidget {
  const Join({super.key});

  @override
  State<Join> createState() => _JoinState();
}

class _JoinState extends State<Join> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Join with a code'),SizedBox(width: 210,),
            Text('join',style: TextStyle(fontSize: 18,color: Colors.black45),)
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Enter the code provided by the meeeting organiser',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: TextFormField(
              textAlign: TextAlign.left,
              decoration: InputDecoration(fillColor: Colors.brown.shade100,filled: true,
                  hintText: "Example: abc-mnop-xyz",
                  contentPadding: EdgeInsets.only(left: 10,right: 10)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Container(
              height: 40,
              width: 180,
              child: Center(
                  child: Row(
                    children: [Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(Icons.keyboard),
                    ),SizedBox(width: 10,),
                      Text('Rejoin `Cdcejjd`', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
