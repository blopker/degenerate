// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ChecksUpdateRequestCompleted {const ChecksUpdateRequestCompleted({this.status, this.additionalProperties = const {}, });

factory ChecksUpdateRequestCompleted.fromJson(Map<String, dynamic> json) { return ChecksUpdateRequestCompleted(
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
ChecksUpdateRequestCompleted copyWith({dynamic Function()? status, Map<String, dynamic>? additionalProperties, }) { return ChecksUpdateRequestCompleted(
  status: status != null ? status() : this.status,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksUpdateRequestCompleted &&
          status == other.status &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(status, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'ChecksUpdateRequestCompleted(status: $status, additionalProperties: $additionalProperties)'; } 
 }
