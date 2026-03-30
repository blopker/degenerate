// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityDeleteTrustedDomainResponseResult {const EmailSecurityDeleteTrustedDomainResponseResult({required this.id});

factory EmailSecurityDeleteTrustedDomainResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityDeleteTrustedDomainResponseResult(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the trusted domain.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityDeleteTrustedDomainResponseResult copyWith({int? id}) { return EmailSecurityDeleteTrustedDomainResponseResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDeleteTrustedDomainResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityDeleteTrustedDomainResponseResult(id: $id)'; } 
 }
