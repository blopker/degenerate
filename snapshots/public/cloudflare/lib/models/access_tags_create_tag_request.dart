// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_tags_components_schemas_name.dart';final class AccessTagsCreateTagRequest {const AccessTagsCreateTagRequest({this.name});

factory AccessTagsCreateTagRequest.fromJson(Map<String, dynamic> json) { return AccessTagsCreateTagRequest(
  name: json['name'] != null ? AccessTagsComponentsSchemasName.fromJson(json['name'] as String) : null,
); }

/// The name of the tag
final AccessTagsComponentsSchemasName? name;

Map<String, dynamic> toJson() { return {
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessTagsCreateTagRequest copyWith({AccessTagsComponentsSchemasName Function()? name}) { return AccessTagsCreateTagRequest(
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessTagsCreateTagRequest &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'AccessTagsCreateTagRequest(name: $name)'; } 
 }
