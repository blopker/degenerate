// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_source_field.dart';@immutable final class CloudflarePipelinesStructField {const CloudflarePipelinesStructField({required this.fields, this.name = const Omittable.absent(), });

factory CloudflarePipelinesStructField.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesStructField(
  fields: (json['fields'] as List<dynamic>).map((e) => CloudflarePipelinesSourceField.fromJson(e as Map<String, dynamic>)).toList(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

final List<CloudflarePipelinesSourceField> fields;

final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  'fields': fields.map((e) => e.toJson()).toList(),
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fields'); } 
CloudflarePipelinesStructField copyWith({List<CloudflarePipelinesSourceField>? fields, Omittable<String?>? name, }) { return CloudflarePipelinesStructField(
  fields: fields ?? this.fields,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesStructField &&
          listEquals(fields, other.fields) &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(fields), name); } 
@override String toString() { return 'CloudflarePipelinesStructField(fields: $fields, name: $name)'; } 
 }
