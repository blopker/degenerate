// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Additional information related to the host name.
@immutable final class IntelAdditionalInformation {const IntelAdditionalInformation({this.suspectedMalwareFamily});

factory IntelAdditionalInformation.fromJson(Map<String, dynamic> json) { return IntelAdditionalInformation(
  suspectedMalwareFamily: json['suspected_malware_family'] as String?,
); }

/// Suspected DGA malware family.
final String? suspectedMalwareFamily;

Map<String, dynamic> toJson() { return {
  'suspected_malware_family': ?suspectedMalwareFamily,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'suspected_malware_family'}.contains(key)); } 
IntelAdditionalInformation copyWith({String Function()? suspectedMalwareFamily}) { return IntelAdditionalInformation(
  suspectedMalwareFamily: suspectedMalwareFamily != null ? suspectedMalwareFamily() : this.suspectedMalwareFamily,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelAdditionalInformation &&
          suspectedMalwareFamily == other.suspectedMalwareFamily; } 
@override int get hashCode { return suspectedMalwareFamily.hashCode; } 
@override String toString() { return 'IntelAdditionalInformation(suspectedMalwareFamily: $suspectedMalwareFamily)'; } 
 }
