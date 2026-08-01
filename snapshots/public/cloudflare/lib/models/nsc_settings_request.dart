// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class NscSettingsRequest {const NscSettingsRequest({this.defaultAsn = const Omittable.absent()});

factory NscSettingsRequest.fromJson(Map<String, dynamic> json) { return NscSettingsRequest(
  defaultAsn: json.containsKey('default_asn') ? Omittable(json['default_asn'] != null ? (json['default_asn'] as num).toInt() : null) : const Omittable.absent(),
); }

final Omittable<int?> defaultAsn;

Map<String, dynamic> toJson() { return {
  if (defaultAsn.isPresent) 'default_asn': defaultAsn.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_asn'}.contains(key)); } 
NscSettingsRequest copyWith({Omittable<int?>? defaultAsn}) { return NscSettingsRequest(
  defaultAsn: defaultAsn ?? this.defaultAsn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscSettingsRequest &&
          defaultAsn == other.defaultAsn; } 
@override int get hashCode { return defaultAsn.hashCode; } 
@override String toString() { return 'NscSettingsRequest(defaultAsn: $defaultAsn)'; } 
 }
