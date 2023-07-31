class Province {
  String? provinceId;
  String? province;

  Province({this.provinceId, this.province});

  Province.fromJson(Map<String, dynamic> json) {
    provinceId = json['province_id'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['province_id'] = provinceId;
    data['province'] = province;
    return data;
  }

  static List<Province> fromJsonList(List list) {
    if (list.length == 0) return List<Province>.empty();
    return list.map((item) => Province.fromJson(item)).toList();
  }
}
