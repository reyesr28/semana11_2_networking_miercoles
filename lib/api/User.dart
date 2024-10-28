class User{

  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  User({
    required this.id,
    required this.email,
  required this.first_name,
  required this.last_name,
  required this.avatar
});

  static User objJson(Map<String, dynamic> json){
    return User(
        id: json['id'] as int,
        email: json['email'] as String,
        first_name: json['first_name'] as String,
        last_name: json['last_name'] as String,
        avatar: json['avatar'] as String);
  }

}