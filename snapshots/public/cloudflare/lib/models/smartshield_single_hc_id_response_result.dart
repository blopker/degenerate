// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'smartshield_identifier.dart';@immutable final class SmartshieldSingleHcIdResponseResult {const SmartshieldSingleHcIdResponseResult({this.id});

factory SmartshieldSingleHcIdResponseResult.fromJson(Map<String, dynamic> json) { return SmartshieldSingleHcIdResponseResult(
  id: json['id'] != null ? SmartshieldIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final SmartshieldIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
SmartshieldSingleHcIdResponseResult copyWith({SmartshieldIdentifier Function()? id}) { return SmartshieldSingleHcIdResponseResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSingleHcIdResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'SmartshieldSingleHcIdResponseResult(id: $id)'; } 
 }
