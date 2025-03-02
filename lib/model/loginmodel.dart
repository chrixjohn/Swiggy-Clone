class LoginModel {
  String? phnNo;
  String? password;

  LoginModel({this.phnNo, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    phnNo = json['phn_no'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phn_no'] = phnNo;
    data['password'] = password;
    return data;
  }
}