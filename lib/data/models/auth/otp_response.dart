class OtpResponse {
  OtpResponse({
    required this.data,
    required this.status,
  });
  late final Data data;
  late final String status;

  OtpResponse.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    _data['status'] = status;
    return _data;
  }
}

class Data {
  Data({
    required this.accessToken,
    required this.refreshToken,
    required this.issuedDate,
    required this.accessExpiresDate,
    required this.refreshExpiresDate,
    required this.user,
  });
  late final String accessToken;
  late final String refreshToken;
  late final String issuedDate;
  late final String accessExpiresDate;
  late final String refreshExpiresDate;
  late final User user;

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    issuedDate = json['issuedDate'];
    accessExpiresDate = json['accessExpiresDate'];
    refreshExpiresDate = json['refreshExpiresDate'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['accessToken'] = accessToken;
    _data['refreshToken'] = refreshToken;
    _data['issuedDate'] = issuedDate;
    _data['accessExpiresDate'] = accessExpiresDate;
    _data['refreshExpiresDate'] = refreshExpiresDate;
    _data['user'] = user.toJson();
    return _data;
  }
}

class User {
  User({
    required this.userName,
    required this.phoneNumber,
    required this.id,
  });
  late final String userName;
  late final String phoneNumber;
  late final int id;

  User.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    phoneNumber = json['phoneNumber'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userName'] = userName;
    _data['phoneNumber'] = phoneNumber;
    _data['id'] = id;
    return _data;
  }
}
