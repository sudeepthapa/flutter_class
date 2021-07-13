class User {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  Company company;

  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.username,
      required this.website,
      required this.company});

  static User fromMap(Map<String, dynamic> userMap) {
    return User(
      name: userMap['name'] ?? '',
      email: userMap['email'] ?? '',
      phone: userMap['phone'] ?? '',
      username: userMap['username'] ?? '',
      website: userMap['website'] ?? '',
      id: userMap['id'],
      company: Company.fromMap(userMap['company']),
    );
  }
}

class Company {
  String name;
  String bs;
  String catchPhrase;

  Company({required this.name, required this.bs, required this.catchPhrase});

  static fromMap(Map<String, dynamic> data) {
    return Company(
      name: data['name'],
      bs: data['bs'],
      catchPhrase: data['catchPhrase'],
    );
  }
}
