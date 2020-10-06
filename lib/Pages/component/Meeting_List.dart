import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:mrcci_ec/firebase%20services/firestore_service.dart';

// class MeetingList extends StatelessWidget {
//   FirestoreService _firestore = FirestoreService();
//   Stream meetings;
//   Future getMeetings() async {
//     meetings = await _firestore.getMeetings();
//   }

//   @override
//   Widget build(BuildContext context) {
//     getMeetings();
//     return StreamBuilder(
//         stream: meetings,
//         builder: (BuildContext context, snapshot) {
//           if (snapshot.hasError) {
//             return Text('Something went wrong!');
//           }
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Text('Loading');
//           }
//           return new ListView(
//             children: snapshot.data.documents.map((DocumentSnapshot document) {
//               return new ListTile(
//                 title: new Text(document.data()['title']),
//                 subtitle: new Text(document.data()['date']),
//               );
//             }).toList(),
//           );
//         });
//   }
// }

class MeetingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('meetings');

    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return new ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return new Card(
              color: Colors.blue,
              elevation: 5.0,
              child: new ListTile(
                title: new Text(document.data()['title']),
                subtitle: new Text(document.data()['date']),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
