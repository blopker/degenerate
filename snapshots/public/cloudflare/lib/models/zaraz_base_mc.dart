// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_base_mc_actions_value.dart';import 'zaraz_base_mc_neo_events.dart';@immutable final class ZarazBaseMc {const ZarazBaseMc({required this.blockingTriggers, required this.defaultFields, required this.enabled, required this.name, required this.component, required this.permissions, required this.settings, this.defaultPurpose, this.vendorName, this.vendorPolicyUrl, this.actions, this.neoEvents, });

factory ZarazBaseMc.fromJson(Map<String, dynamic> json) { return ZarazBaseMc(
  blockingTriggers: (json['blockingTriggers'] as List<dynamic>).map((e) => e as String).toList(),
  defaultFields: json['defaultFields'] as Map<String, dynamic>,
  defaultPurpose: json['defaultPurpose'] as String?,
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  vendorName: json['vendorName'] as String?,
  vendorPolicyUrl: json['vendorPolicyUrl'] as String?,
  actions: (json['actions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, ZarazBaseMcActionsValue.fromJson(v as Map<String, dynamic>))),
  component: json['component'] as String,
  neoEvents: (json['neoEvents'] as List<dynamic>?)?.map((e) => ZarazBaseMcNeoEvents.fromJson(e as Map<String, dynamic>)).toList(),
  permissions: (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
  settings: json['settings'] as Map<String, dynamic>,
); }

/// List of blocking trigger IDs
final List<String> blockingTriggers;

/// Default fields for tool's actions
final Map<String,dynamic> defaultFields;

/// Default consent purpose ID
final String? defaultPurpose;

/// Whether tool is enabled
final bool enabled;

/// Tool's name defined by the user
final String name;

/// Vendor name for TCF compliant consent modal, required for Custom Managed Components and Custom HTML tool with a defaultPurpose assigned
final String? vendorName;

/// Vendor's Privacy Policy URL for TCF compliant consent modal, required for Custom Managed Components and Custom HTML tool with a defaultPurpose assigned
final String? vendorPolicyUrl;

/// Actions configured on a tool. Either this or neoEvents field is required.
final Map<String,ZarazBaseMcActionsValue>? actions;

/// Tool's internal name
final String component;

/// DEPRECATED - List of actions configured on a tool. Either this or actions field is required. If both are present, actions field will take precedence.
final List<ZarazBaseMcNeoEvents>? neoEvents;

/// List of permissions granted to the component
final List<String> permissions;

/// Tool's settings
final Map<String,dynamic> settings;

Map<String, dynamic> toJson() { return {
  'blockingTriggers': blockingTriggers,
  'defaultFields': defaultFields,
  'defaultPurpose': ?defaultPurpose,
  'enabled': enabled,
  'name': name,
  'vendorName': ?vendorName,
  'vendorPolicyUrl': ?vendorPolicyUrl,
  if (actions != null) 'actions': actions?.map((k, v) => MapEntry(k, v.toJson())),
  'component': component,
  if (neoEvents != null) 'neoEvents': neoEvents?.map((e) => e.toJson()).toList(),
  'permissions': permissions,
  'settings': settings,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('blockingTriggers') &&
      json.containsKey('defaultFields') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('component') && json['component'] is String &&
      json.containsKey('permissions') &&
      json.containsKey('settings'); } 
ZarazBaseMc copyWith({List<String>? blockingTriggers, Map<String,dynamic>? defaultFields, String Function()? defaultPurpose, bool? enabled, String? name, String Function()? vendorName, String Function()? vendorPolicyUrl, Map<String, ZarazBaseMcActionsValue> Function()? actions, String? component, List<ZarazBaseMcNeoEvents> Function()? neoEvents, List<String>? permissions, Map<String,dynamic>? settings, }) { return ZarazBaseMc(
  blockingTriggers: blockingTriggers ?? this.blockingTriggers,
  defaultFields: defaultFields ?? this.defaultFields,
  defaultPurpose: defaultPurpose != null ? defaultPurpose() : this.defaultPurpose,
  enabled: enabled ?? this.enabled,
  name: name ?? this.name,
  vendorName: vendorName != null ? vendorName() : this.vendorName,
  vendorPolicyUrl: vendorPolicyUrl != null ? vendorPolicyUrl() : this.vendorPolicyUrl,
  actions: actions != null ? actions() : this.actions,
  component: component ?? this.component,
  neoEvents: neoEvents != null ? neoEvents() : this.neoEvents,
  permissions: permissions ?? this.permissions,
  settings: settings ?? this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazBaseMc &&
          listEquals(blockingTriggers, other.blockingTriggers) &&
          defaultFields == other.defaultFields &&
          defaultPurpose == other.defaultPurpose &&
          enabled == other.enabled &&
          name == other.name &&
          vendorName == other.vendorName &&
          vendorPolicyUrl == other.vendorPolicyUrl &&
          actions == other.actions &&
          component == other.component &&
          listEquals(neoEvents, other.neoEvents) &&
          listEquals(permissions, other.permissions) &&
          settings == other.settings; } 
@override int get hashCode { return Object.hash(Object.hashAll(blockingTriggers), defaultFields, defaultPurpose, enabled, name, vendorName, vendorPolicyUrl, actions, component, Object.hashAll(neoEvents ?? const []), Object.hashAll(permissions), settings); } 
@override String toString() { return 'ZarazBaseMc(blockingTriggers: $blockingTriggers, defaultFields: $defaultFields, defaultPurpose: $defaultPurpose, enabled: $enabled, name: $name, vendorName: $vendorName, vendorPolicyUrl: $vendorPolicyUrl, actions: $actions, component: $component, neoEvents: $neoEvents, permissions: $permissions, settings: $settings)'; } 
 }
