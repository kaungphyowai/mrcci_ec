class CurrentUser {
  final String id;
  final String fullname;
  final String email;
  final String phone;
  final String role;

  final String bio;
  final String address;
  final String dob;

  CurrentUser(
      {this.id,
      this.fullname,
      this.email,
      this.phone,
      this.role,
      this.bio,
      this.address,
      this.dob});

  CurrentUser.fromData(Map<String, dynamic> data)
      : id = data['id'],
        fullname = data['username'],
        email = data['email'],
        phone = data['phone'],
        role = data['role'],
        bio = data['bio'],
        address = data['address'],
        dob = data['dob'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': fullname,
      'email': email,
      'phone': phone,
      'role': role,
      'bio': bio,
      'address': address,
      'dob': dob
    };
  }
}
