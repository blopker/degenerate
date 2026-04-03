// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityDeleteDomainResponseResult {const EmailSecurityDeleteDomainResponseResult({required this.id});

factory EmailSecurityDeleteDomainResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityDeleteDomainResponseResult(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the domain.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityDeleteDomainResponseResult copyWith({int? id}) { return EmailSecurityDeleteDomainResponseResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDeleteDomainResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityDeleteDomainResponseResult(id: $id)'; } 
 }
