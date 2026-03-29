// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessLoginMethodRuleLoginMethod {const AccessLoginMethodRuleLoginMethod({required this.id});

factory AccessLoginMethodRuleLoginMethod.fromJson(Map<String, dynamic> json) { return AccessLoginMethodRuleLoginMethod(
  id: json['id'] as String,
); }

/// The ID of an identity provider.
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
AccessLoginMethodRuleLoginMethod copyWith({String? id}) { return AccessLoginMethodRuleLoginMethod(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessLoginMethodRuleLoginMethod &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessLoginMethodRuleLoginMethod(id: $id)'; } 
 }
