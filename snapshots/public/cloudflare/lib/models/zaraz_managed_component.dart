// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_managed_component_actions_value.dart';import 'zaraz_managed_component_neo_events.dart';@immutable final class ZarazManagedComponentType {const ZarazManagedComponentType._(this.value);

factory ZarazManagedComponentType.fromJson(String json) { return switch (json) {
  'component' => component,
  _ => ZarazManagedComponentType._(json),
}; }

static const ZarazManagedComponentType component = ZarazManagedComponentType._('component');

static const List<ZarazManagedComponentType> values = [component];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazManagedComponentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazManagedComponentType($value)'; } 
 }
@immutable final class ZarazManagedComponent {const ZarazManagedComponent({required this.blockingTriggers, required this.defaultFields, required this.enabled, required this.name, required this.component, required this.permissions, required this.settings, required this.type, this.defaultPurpose, this.vendorName, this.vendorPolicyUrl, this.actions, this.neoEvents, });

factory ZarazManagedComponent.fromJson(Map<String, dynamic> json) { return ZarazManagedComponent(
  blockingTriggers: (json['blockingTriggers'] as List<dynamic>).map((e) => e as String).toList(),
  defaultFields: json['defaultFields'] as Map<String, dynamic>,
  defaultPurpose: json['defaultPurpose'] as String?,
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  vendorName: json['vendorName'] as String?,
  vendorPolicyUrl: json['vendorPolicyUrl'] as String?,
  actions: (json['actions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, ZarazManagedComponentActionsValue.fromJson(v as Map<String, dynamic>))),
  component: json['component'] as String,
  neoEvents: (json['neoEvents'] as List<dynamic>?)?.map((e) => ZarazManagedComponentNeoEvents.fromJson(e as Map<String, dynamic>)).toList(),
  permissions: (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
  settings: json['settings'] as Map<String, dynamic>,
  type: ZarazManagedComponentType.fromJson(json['type'] as String),
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
final Map<String,ZarazManagedComponentActionsValue>? actions;

/// Tool's internal name
final String component;

/// DEPRECATED - List of actions configured on a tool. Either this or actions field is required. If both are present, actions field will take precedence.
final List<ZarazManagedComponentNeoEvents>? neoEvents;

/// List of permissions granted to the component
final List<String> permissions;

/// Tool's settings
final Map<String,dynamic> settings;

final ZarazManagedComponentType type;

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
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('blockingTriggers') &&
      json.containsKey('defaultFields') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('component') && json['component'] is String &&
      json.containsKey('permissions') &&
      json.containsKey('settings') &&
      json.containsKey('type'); } 
ZarazManagedComponent copyWith({List<String>? blockingTriggers, Map<String,dynamic>? defaultFields, String Function()? defaultPurpose, bool? enabled, String? name, String Function()? vendorName, String Function()? vendorPolicyUrl, Map<String, ZarazManagedComponentActionsValue> Function()? actions, String? component, List<ZarazManagedComponentNeoEvents> Function()? neoEvents, List<String>? permissions, Map<String,dynamic>? settings, ZarazManagedComponentType? type, }) { return ZarazManagedComponent(
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
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazManagedComponent &&
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
          settings == other.settings &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(blockingTriggers), defaultFields, defaultPurpose, enabled, name, vendorName, vendorPolicyUrl, actions, component, Object.hashAll(neoEvents ?? const []), Object.hashAll(permissions), settings, type); } 
@override String toString() { return 'ZarazManagedComponent(blockingTriggers: $blockingTriggers, defaultFields: $defaultFields, defaultPurpose: $defaultPurpose, enabled: $enabled, name: $name, vendorName: $vendorName, vendorPolicyUrl: $vendorPolicyUrl, actions: $actions, component: $component, neoEvents: $neoEvents, permissions: $permissions, settings: $settings, type: $type)'; } 
 }
