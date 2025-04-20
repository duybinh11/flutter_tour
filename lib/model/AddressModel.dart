import 'dart:convert';

class AddressModel {
  int? id;
  String? province;
  String? district;
  String? town;
  String? detail;

  AddressModel({
    this.id,
    this.province,
    this.district,
    this.town,
    this.detail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (id != null) 'id': id,
      if (province != null) 'province': province,
      if (district != null) 'district': district,
      if (town != null) 'town': town,
      if (detail != null) 'detail': detail,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      id: map['id'] != null ? map['id'] as int : null,
      province: map['province'] != null ? map['province'] as String : null,
      district: map['district'] != null ? map['district'] as String : null,
      town: map['town'] != null ? map['town'] as String : null,
      detail: map['detail'] != null ? map['detail'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'AddressModel(id: $id, province: $province, district: $district, town: $town, detail: $detail)';
  }

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
