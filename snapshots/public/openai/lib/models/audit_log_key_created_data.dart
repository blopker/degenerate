// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The payload used to create the API key.
@immutable final class AuditLogKeyCreatedData {const AuditLogKeyCreatedData({this.scopes});

factory AuditLogKeyCreatedData.fromJson(Map<String, dynamic> json) { return AuditLogKeyCreatedData(
  scopes: (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// A list of scopes allowed for the API key, e.g. `["api.model.request"]`
final List<String>? scopes;

Map<String, dynamic> toJson() { return {
  'scopes': ?scopes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'scopes'}.contains(key)); } 
AuditLogKeyCreatedData copyWith({List<String> Function()? scopes}) { return AuditLogKeyCreatedData(
  scopes: scopes != null ? scopes() : this.scopes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogKeyCreatedData &&
          listEquals(scopes, other.scopes); } 
@override int get hashCode { return Object.hashAll(scopes ?? const []).hashCode; } 
@override String toString() { return 'AuditLogKeyCreatedData(scopes: $scopes)'; } 
 }
