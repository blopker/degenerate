// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessIpListRuleIpList {const AccessIpListRuleIpList({required this.id});

factory AccessIpListRuleIpList.fromJson(Map<String, dynamic> json) { return AccessIpListRuleIpList(
  id: json['id'] as String,
); }

/// The ID of a previously created IP list.
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
AccessIpListRuleIpList copyWith({String? id}) { return AccessIpListRuleIpList(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessIpListRuleIpList &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AccessIpListRuleIpList(id: $id)'; } 
 }
