class PartnersResponse {
  PartnersResponse({
    required this.data,
    required this.status,
  });
  late final Data data;
  late final String status;

  PartnersResponse.fromJson(Map<String, dynamic> json) {
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
    required this.data,
    required this.pagesCount,
    required this.rowsCount,
  });
  late final List<Partner> data;
  late final int pagesCount;
  late final int rowsCount;

  Data.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Partner.fromJson(e)).toList();
    pagesCount = json['pagesCount'];
    rowsCount = json['rowsCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['pagesCount'] = pagesCount;
    _data['rowsCount'] = rowsCount;
    return _data;
  }
}

class Partner {
  Partner({
    required this.title,
    required this.desc,
    required this.logo,
    required this.id,
  });
  late final String title;
  late final String desc;
  late final String logo;
  late final int id;

  Partner.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    logo = json['logo'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['desc'] = desc;
    _data['logo'] = logo;
    _data['id'] = id;
    return _data;
  }
}
