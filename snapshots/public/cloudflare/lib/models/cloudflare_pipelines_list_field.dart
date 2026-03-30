// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_source_field.dart';final class CloudflarePipelinesListField {const CloudflarePipelinesListField({required this.items});

factory CloudflarePipelinesListField.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesListField(
  items: CloudflarePipelinesSourceField.fromJson(json['items'] as Map<String, dynamic>),
); }

final CloudflarePipelinesSourceField items;

Map<String, dynamic> toJson() { return {
  'items': items.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
CloudflarePipelinesListField copyWith({CloudflarePipelinesSourceField? items}) { return CloudflarePipelinesListField(
  items: items ?? this.items,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesListField &&
          items == other.items; } 
@override int get hashCode { return items.hashCode; } 
@override String toString() { return 'CloudflarePipelinesListField(items: $items)'; } 
 }
