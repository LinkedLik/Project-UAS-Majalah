class User {
  late int? userid;
  late int? username;
  late int? password;

  User({this.userid, this.password, this.username});

  User.fromMap(dynamic obj) {
    this.userid = obj['userId'];
    this.username = obj['username'];
    this.password = obj['password'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'userid': userid,
      'username': username,
      'password': password,
    };
    return map;
  }
}
