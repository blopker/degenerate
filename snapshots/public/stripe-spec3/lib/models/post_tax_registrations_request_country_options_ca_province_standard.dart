// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard {const PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard({required this.province});

factory PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard(
  province: json['province'] as String,
); }

final String province;

Map<String, dynamic> toJson() { return {
  'province': province,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('province') && json['province'] is String; } 
PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard copyWith({String? province}) { return PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard(
  province: province ?? this.province,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard &&
          province == other.province; } 
@override int get hashCode { return province.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard(province: $province)'; } 
 }
