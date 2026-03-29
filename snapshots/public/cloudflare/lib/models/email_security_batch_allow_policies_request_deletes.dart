// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityBatchAllowPoliciesRequestDeletes {const EmailSecurityBatchAllowPoliciesRequestDeletes({required this.id});

factory EmailSecurityBatchAllowPoliciesRequestDeletes.fromJson(Map<String, dynamic> json) { return EmailSecurityBatchAllowPoliciesRequestDeletes(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the allow policy.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityBatchAllowPoliciesRequestDeletes copyWith({int? id}) { return EmailSecurityBatchAllowPoliciesRequestDeletes(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityBatchAllowPoliciesRequestDeletes &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityBatchAllowPoliciesRequestDeletes(id: $id)'; } 
 }
