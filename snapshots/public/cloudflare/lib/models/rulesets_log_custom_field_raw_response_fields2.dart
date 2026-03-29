// GENERATED CODE - DO NOT MODIFY BY HAND

/// The raw response field to log.
final class RulesetsLogCustomFieldRawResponseFields2 {const RulesetsLogCustomFieldRawResponseFields2({required this.name, this.preserveDuplicates = false, });

factory RulesetsLogCustomFieldRawResponseFields2.fromJson(Map<String, dynamic> json) { return RulesetsLogCustomFieldRawResponseFields2(
  name: json['name'] as String,
  preserveDuplicates: json.containsKey('preserve_duplicates') ? json['preserve_duplicates'] as bool : false,
); }

/// The name of the response header.
final String name;

/// Whether to log duplicate values of the same header.
final bool preserveDuplicates;

Map<String, dynamic> toJson() { return {
  'name': name,
  'preserve_duplicates': preserveDuplicates,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
RulesetsLogCustomFieldRawResponseFields2 copyWith({String? name, bool Function()? preserveDuplicates, }) { return RulesetsLogCustomFieldRawResponseFields2(
  name: name ?? this.name,
  preserveDuplicates: preserveDuplicates != null ? preserveDuplicates() : this.preserveDuplicates,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsLogCustomFieldRawResponseFields2 &&
          name == other.name &&
          preserveDuplicates == other.preserveDuplicates; } 
@override int get hashCode { return Object.hash(name, preserveDuplicates); } 
@override String toString() { return 'RulesetsLogCustomFieldRawResponseFields2(name: $name, preserveDuplicates: $preserveDuplicates)'; } 
 }
