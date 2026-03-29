// GENERATED CODE - DO NOT MODIFY BY HAND

final class GlobalAdvisoryCwes {const GlobalAdvisoryCwes({required this.cweId, required this.name, });

factory GlobalAdvisoryCwes.fromJson(Map<String, dynamic> json) { return GlobalAdvisoryCwes(
  cweId: json['cwe_id'] as String,
  name: json['name'] as String,
); }

/// The Common Weakness Enumeration (CWE) identifier.
final String cweId;

/// The name of the CWE.
final String name;

Map<String, dynamic> toJson() { return {
  'cwe_id': cweId,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cwe_id') && json['cwe_id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
GlobalAdvisoryCwes copyWith({String? cweId, String? name, }) { return GlobalAdvisoryCwes(
  cweId: cweId ?? this.cweId,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GlobalAdvisoryCwes &&
          cweId == other.cweId &&
          name == other.name; } 
@override int get hashCode { return Object.hash(cweId, name); } 
@override String toString() { return 'GlobalAdvisoryCwes(cweId: $cweId, name: $name)'; } 
 }
