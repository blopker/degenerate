// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudflarePipelinesSourceField {const CloudflarePipelinesSourceField({this.metadataKey, required this.name, this.$required, this.sqlName, });

factory CloudflarePipelinesSourceField.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesSourceField(
  metadataKey: json['metadata_key'] as String?,
  name: json['name'] as String,
  $required: json['required'] as bool?,
  sqlName: json['sql_name'] as String?,
); }

final String? metadataKey;

final String name;

final bool? $required;

final String? sqlName;

Map<String, dynamic> toJson() { return {
  'metadata_key': ?metadataKey,
  'name': name,
  'required': ?$required,
  'sql_name': ?sqlName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
CloudflarePipelinesSourceField copyWith({String? Function()? metadataKey, String? name, bool Function()? $required, String Function()? sqlName, }) { return CloudflarePipelinesSourceField(
  metadataKey: metadataKey != null ? metadataKey() : this.metadataKey,
  name: name ?? this.name,
  $required: $required != null ? $required() : this.$required,
  sqlName: sqlName != null ? sqlName() : this.sqlName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesSourceField &&
          metadataKey == other.metadataKey &&
          name == other.name &&
          $required == other.$required &&
          sqlName == other.sqlName; } 
@override int get hashCode { return Object.hash(metadataKey, name, $required, sqlName); } 
@override String toString() { return 'CloudflarePipelinesSourceField(metadataKey: $metadataKey, name: $name, \$required: ${$required}, sqlName: $sqlName)'; } 
 }
