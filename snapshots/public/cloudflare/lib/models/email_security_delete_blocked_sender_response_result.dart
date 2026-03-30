// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityDeleteBlockedSenderResponseResult {const EmailSecurityDeleteBlockedSenderResponseResult({required this.id});

factory EmailSecurityDeleteBlockedSenderResponseResult.fromJson(Map<String, dynamic> json) { return EmailSecurityDeleteBlockedSenderResponseResult(
  id: (json['id'] as num).toInt(),
); }

/// The unique identifier for the allow policy.
final int id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num; } 
EmailSecurityDeleteBlockedSenderResponseResult copyWith({int? id}) { return EmailSecurityDeleteBlockedSenderResponseResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityDeleteBlockedSenderResponseResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'EmailSecurityDeleteBlockedSenderResponseResult(id: $id)'; } 
 }
