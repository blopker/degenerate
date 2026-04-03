// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityDeleteAllowPolicyResponseResult {const EmailSecurityDeleteAllowPolicyResponseResult({required this.id});

factory EmailSecurityDeleteAllowPolicyResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityDeleteAllowPolicyResponseResult(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the allow policy.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityDeleteAllowPolicyResponseResult copyWith({int? id}) { return EmailSecurityDeleteAllowPolicyResponseResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDeleteAllowPolicyResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityDeleteAllowPolicyResponseResult(id: $id)'; } 
 }
