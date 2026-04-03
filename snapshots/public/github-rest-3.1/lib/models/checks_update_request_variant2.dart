// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ChecksUpdateRequestVariant2 {const ChecksUpdateRequestVariant2({this.status, this.additionalProperties = const {}, });

factory ChecksUpdateRequestVariant2.fromJson(Map<String, dynamic> json) { return ChecksUpdateRequestVariant2(
  status: json['status'],
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'status'}.contains(e.key))),
); }

final dynamic status;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'status': ?status,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status'}.contains(key)); } 
ChecksUpdateRequestVariant2 copyWith({dynamic Function()? status, Map<String, dynamic>? additionalProperties, }) { return ChecksUpdateRequestVariant2(
  status: status != null ? status() : this.status,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksUpdateRequestVariant2 &&
          status == other.status &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(status, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'ChecksUpdateRequestVariant2(status: $status, additionalProperties: $additionalProperties)'; } 
 }
