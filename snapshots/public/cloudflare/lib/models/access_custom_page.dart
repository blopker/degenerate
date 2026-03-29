// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_custom_pages_components_schemas_name.dart';import 'access_schemas_app_count.dart';import 'access_schemas_type.dart';import 'access_timestamp.dart';import 'access_uuid.dart';final class AccessCustomPage {const AccessCustomPage({this.appCount, this.createdAt, required this.customHtml, required this.name, required this.type, this.uid, this.updatedAt, });

factory AccessCustomPage.fromJson(Map<String, dynamic> json) { return AccessCustomPage(
  appCount: json['app_count'] != null ? AccessSchemasAppCount.fromJson(json['app_count'] as num) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  customHtml: json['custom_html'] as String,
  name: AccessCustomPagesComponentsSchemasName.fromJson(json['name'] as String),
  type: AccessSchemasType.fromJson(json['type'] as String),
  uid: json['uid'] != null ? AccessUuid.fromJson(json['uid'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
); }

final AccessSchemasAppCount? appCount;

final AccessTimestamp? createdAt;

/// Custom page HTML.
final String customHtml;

/// Custom page name.
final AccessCustomPagesComponentsSchemasName name;

final AccessSchemasType type;

final AccessUuid? uid;

final AccessTimestamp? updatedAt;

Map<String, dynamic> toJson() { return {
  if (appCount != null) 'app_count': appCount?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  'custom_html': customHtml,
  'name': name.toJson(),
  'type': type.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('custom_html') && json['custom_html'] is String &&
      json.containsKey('name') &&
      json.containsKey('type'); } 
AccessCustomPage copyWith({AccessSchemasAppCount Function()? appCount, AccessTimestamp Function()? createdAt, String? customHtml, AccessCustomPagesComponentsSchemasName? name, AccessSchemasType? type, AccessUuid Function()? uid, AccessTimestamp Function()? updatedAt, }) { return AccessCustomPage(
  appCount: appCount != null ? appCount() : this.appCount,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  customHtml: customHtml ?? this.customHtml,
  name: name ?? this.name,
  type: type ?? this.type,
  uid: uid != null ? uid() : this.uid,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCustomPage &&
          appCount == other.appCount &&
          createdAt == other.createdAt &&
          customHtml == other.customHtml &&
          name == other.name &&
          type == other.type &&
          uid == other.uid &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(appCount, createdAt, customHtml, name, type, uid, updatedAt); } 
@override String toString() { return 'AccessCustomPage(appCount: $appCount, createdAt: $createdAt, customHtml: $customHtml, name: $name, type: $type, uid: $uid, updatedAt: $updatedAt)'; } 
 }
