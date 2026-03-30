// GENERATED CODE - DO NOT MODIFY BY HAND

final class NscSettingsRequest {const NscSettingsRequest({this.defaultAsn});

factory NscSettingsRequest.fromJson(Map<String, dynamic> json) { return NscSettingsRequest(
  defaultAsn: json['default_asn'] != null ? (json['default_asn'] as num).toInt() : null,
); }

final int? defaultAsn;

Map<String, dynamic> toJson() { return {
  'default_asn': ?defaultAsn,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_asn'}.contains(key)); } 
NscSettingsRequest copyWith({int? Function()? defaultAsn}) { return NscSettingsRequest(
  defaultAsn: defaultAsn != null ? defaultAsn() : this.defaultAsn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscSettingsRequest &&
          defaultAsn == other.defaultAsn; } 
@override int get hashCode { return defaultAsn.hashCode; } 
@override String toString() { return 'NscSettingsRequest(defaultAsn: $defaultAsn)'; } 
 }
