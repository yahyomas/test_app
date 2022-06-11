class PhoneResponse {
  PhoneResponse({
    required this.data,
    required this.status,
  });
  late final Data data;
  late final String status;

  PhoneResponse.fromJson(Map<String, dynamic> json) {
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
    required this.requestId,
  });
  late final String requestId;

  Data.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['requestId'] = requestId;
    return _data;
  }
}
