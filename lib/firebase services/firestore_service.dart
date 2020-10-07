import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mrcci_ec/models/meetings.dart';
import 'package:mrcci_ec/models/user.dart';

class FirestoreService {
  final String uid;
  FirestoreService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('userProfiles');
  final CollectionReference meetingCollection =
      FirebaseFirestore.instance.collection('meetings');
  final CollectionReference eventCollection =
      FirebaseFirestore.instance.collection('events');

  Future<Stream> getMeetings() async {
    try {
      Stream meetings = await meetingCollection.snapshots();
      return meetings;
    } catch (e) {
      return e.message;
    }
  }

  Future<Stream> getMeetingsWithRole(String role) async {
    try {
      Stream meetings =
          await meetingCollection.where('role', isEqualTo: role).snapshots();
      return meetings;
    } catch (e) {
      return e.message;
    }
  }

  Future getSingleMeeting(String meetingID) async {
    try {
      var singleMeeting = await meetingCollection.doc(meetingID).get();
      return Meeting.fromData(singleMeeting.data());
    } catch (e) {
      return e.message;
    }
  }

  Future getCurrentUserInfo(String id) async {
    try {
      var currentUser = await userCollection.doc(id).get();
      return currentUser;
    } catch (e) {
      return e.message;
    }
  }
}
