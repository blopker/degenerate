// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ChecksCreateRequestVariant2 {const ChecksCreateRequestVariant2({this.status, this.additionalProperties = const {}, });

factory ChecksCreateRequestVariant2.fromJson(Map<String, dynamic> json) { return ChecksCreateRequestVariant2(
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
ChecksCreateRequestVariant2 copyWith({dynamic Function()? status, Map<String, dynamic>? additionalProperties, }) { return ChecksCreateRequestVariant2(
  status: status != null ? status() : this.status,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksCreateRequestVariant2 &&
          status == other.status &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(status, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'ChecksCreateRequestVariant2(status: $status, additionalProperties: $additionalProperties)'; } 
 }
