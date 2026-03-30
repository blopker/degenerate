// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityDeleteDomainsResponseResult {const EmailSecurityDeleteDomainsResponseResult({required this.id});

factory EmailSecurityDeleteDomainsResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityDeleteDomainsResponseResult(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the domain.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityDeleteDomainsResponseResult copyWith({int? id}) { return EmailSecurityDeleteDomainsResponseResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDeleteDomainsResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityDeleteDomainsResponseResult(id: $id)'; } 
 }
