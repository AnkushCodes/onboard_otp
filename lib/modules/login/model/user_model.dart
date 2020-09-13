class User {
  String name;

  String phNumber;


  User({this.name='', this.phNumber});

  factory User.from(Map<String, dynamic> json) {
    return User(name: json['name'], phNumber: json['phNumber']);
  }

   toJson() {
    Map<String, dynamic> json={};
    // json['name'] = name;
    json['otp'] = '1211';
    json['ph_no'] = phNumber;
    return json;
  }
}
