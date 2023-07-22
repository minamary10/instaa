class UserData {
  String username;
  String title;
  String email;
  String password;
  String profileImg;

  UserData({
    required this.username,
    required this.email,
    required this.password,
    required this.title,
    required this.profileImg,
  });

  Map<String, dynamic> convert2Map() {
    return {
      "password": password,
      "email": email,
      "title": title,
      "username": username,
      "profileImg": profileImg,
    };
  }
}
