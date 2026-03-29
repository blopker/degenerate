// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_groups_components_schemas_name.dart';import 'access_is_default.dart';import 'access_rule.dart';final class AccessGroupsUpdateAnAccessGroupRequest {const AccessGroupsUpdateAnAccessGroupRequest({this.exclude, required this.include, this.isDefault, required this.name, this.require, });

factory AccessGroupsUpdateAnAccessGroupRequest.fromJson(Map<String, dynamic> json) { return AccessGroupsUpdateAnAccessGroupRequest(
  exclude: (json['exclude'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  include: (json['include'] as List<dynamic>).map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
  isDefault: json['is_default'] != null ? AccessIsDefault.fromJson(json['is_default'] as bool) : null,
  name: AccessGroupsComponentsSchemasName.fromJson(json['name'] as String),
  require: (json['require'] as List<dynamic>?)?.map((e) => AccessRule.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Rules evaluated with a NOT logical operator. To match a policy, a user cannot meet any of the Exclude rules.
final List<AccessRule>? exclude;

/// Rules evaluated with an OR logical operator. A user needs to meet only one of the Include rules.
final List<AccessRule> include;

/// Whether this is the default group
final AccessIsDefault? isDefault;

/// The name of the Access group.
final AccessGroupsComponentsSchemasName name;

/// Rules evaluated with an AND logical operator. To match a policy, a user must meet all of the Require rules.
final List<AccessRule>? require;

Map<String, dynamic> toJson() { return {
  if (exclude != null) 'exclude': exclude?.map((e) => e.toJson()).toList(),
  'include': include.map((e) => e.toJson()).toList(),
  if (isDefault != null) 'is_default': isDefault?.toJson(),
  'name': name.toJson(),
  if (require != null) 'require': require?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('include') &&
      json.containsKey('name'); } 
AccessGroupsUpdateAnAccessGroupRequest copyWith({List<AccessRule> Function()? exclude, List<AccessRule>? include, AccessIsDefault Function()? isDefault, AccessGroupsComponentsSchemasName? name, List<AccessRule> Function()? require, }) { return AccessGroupsUpdateAnAccessGroupRequest(
  exclude: exclude != null ? exclude() : this.exclude,
  include: include ?? this.include,
  isDefault: isDefault != null ? isDefault() : this.isDefault,
  name: name ?? this.name,
  require: require != null ? require() : this.require,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessGroupsUpdateAnAccessGroupRequest &&
          listEquals(exclude, other.exclude) &&
          listEquals(include, other.include) &&
          isDefault == other.isDefault &&
          name == other.name &&
          listEquals(require, other.require); } 
@override int get hashCode { return Object.hash(Object.hashAll(exclude ?? const []), Object.hashAll(include), isDefault, name, Object.hashAll(require ?? const [])); } 
@override String toString() { return 'AccessGroupsUpdateAnAccessGroupRequest(exclude: $exclude, include: $include, isDefault: $isDefault, name: $name, require: $require)'; } 
 }
