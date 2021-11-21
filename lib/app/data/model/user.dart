class User {
  String id;
  String email;
  String token;

  User({id, email, token});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.email = json['email'];
    this.token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['token'] = this.token;
    return data;
  }
}
