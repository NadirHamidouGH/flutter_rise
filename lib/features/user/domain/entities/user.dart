class User {
  final String name;
  final int age;
  final String email;
  final String pictureUrl;

  User({
    required this.name,
    required this.age,
    required this.email,
    required this.pictureUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: "${json['name']['first']} ${json['name']['last']}",
      age: json['dob']['age'],
      email: json['email'],
      pictureUrl: json['picture']['large'],
    );
  }
}
