class RegistrationModel {
  bool? status;
  String? msg;
  User? user;

  RegistrationModel({this.status, this.msg, this.user});

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['msg'] = msg;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  String? status;
  String? role;
  String? sId;
  String? name;
  String? phnNo;
  String? address;
  String? email;
  String? dob;
  String? password;
  String? gender;
  String? nationality;
  String? district;
  String? state;
  String? createDate;
  String? updateDate;
  int? iV;

  User(
      {this.status,
      this.role,
      this.sId,
      this.name,
      this.phnNo,
      this.address,
      this.email,
      this.dob,
      this.password,
      this.gender,
      this.nationality,
      this.district,
      this.state,
      this.createDate,
      this.updateDate,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    role = json['role'];
    sId = json['_id'];
    name = json['name'];
    phnNo = json['phn_no'];
    address = json['address'];
    email = json['email'];
    dob = json['dob'];
    password = json['password'];
    gender = json['gender'];
    nationality = json['nationality'];
    district = json['district'];
    state = json['state'];
    createDate = json['create_date'];
    updateDate = json['update_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['role'] = role;
    data['_id'] = sId;
    data['name'] = name;
    data['phn_no'] = phnNo;
    data['address'] = address;
    data['email'] = email;
    data['dob'] = dob;
    data['password'] = password;
    data['gender'] = gender;
    data['nationality'] = nationality;
    data['district'] = district;
    data['state'] = state;
    data['create_date'] = createDate;
    data['update_date'] = updateDate;
    data['__v'] = iV;
    return data;
  }
}
