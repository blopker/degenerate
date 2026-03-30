// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ChecksCreateRequestVariant1 {const ChecksCreateRequestVariant1({required this.status, this.additionalProperties = const {}, });

factory ChecksCreateRequestVariant1.fromJson(Map<String, dynamic> json) { return ChecksCreateRequestVariant1(
  status: json['status'],
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'status'}.contains(e.key))),
); }

final dynamic status;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'status': ?status,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
ChecksCreateRequestVariant1 copyWith({dynamic Function()? status, Map<String, dynamic>? additionalProperties, }) { return ChecksCreateRequestVariant1(
  status: status != null ? status() : this.status,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksCreateRequestVariant1 &&
          status == other.status &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(status, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'ChecksCreateRequestVariant1(status: $status, additionalProperties: $additionalProperties)'; } 
 }
