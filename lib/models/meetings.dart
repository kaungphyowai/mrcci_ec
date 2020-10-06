class Meeting {
  final String id;
  final String title;
  final String address;
  final String date;
  final String description;
  final String note;
  final String photourl;
  final String role;
  final String time;
  Meeting(
      {this.id,
      this.title,
      this.address,
      this.date,
      this.description,
      this.note,
      this.photourl,
      this.role,
      this.time});

  Meeting.fromData(Map<String, dynamic> data)
      : id = data['id'],
        title = data['title'],
        address = data['address'],
        date = data['date'],
        description = data['description'],
        note = data['note'],
        photourl = data['photoUrl'],
        role = data['role'],
        time = data['time'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'address': address,
      'date': date,
      'description': description,
      'note': note,
      'photourl': photourl,
      'role': role,
      'time': time
    };
  }
}
