// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_custom_managed_component_actions_value.dart';import 'zaraz_custom_managed_component_neo_events.dart';import 'zaraz_custom_managed_component_worker.dart';@immutable final class ZarazCustomManagedComponentType {const ZarazCustomManagedComponentType._(this.value);

factory ZarazCustomManagedComponentType.fromJson(String json) { return switch (json) {
  'custom-mc' => customMc,
  _ => ZarazCustomManagedComponentType._(json),
}; }

static const ZarazCustomManagedComponentType customMc = ZarazCustomManagedComponentType._('custom-mc');

static const List<ZarazCustomManagedComponentType> values = [customMc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazCustomManagedComponentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZarazCustomManagedComponentType($value)'; } 
 }
@immutable final class ZarazCustomManagedComponent {const ZarazCustomManagedComponent({required this.blockingTriggers, required this.defaultFields, required this.enabled, required this.name, required this.component, required this.permissions, required this.settings, required this.type, required this.worker, this.defaultPurpose, this.vendorName, this.vendorPolicyUrl, this.actions, this.neoEvents, });

factory ZarazCustomManagedComponent.fromJson(Map<String, dynamic> json) { return ZarazCustomManagedComponent(
  blockingTriggers: (json['blockingTriggers'] as List<dynamic>).map((e) => e as String).toList(),
  defaultFields: json['defaultFields'] as Map<String, dynamic>,
  defaultPurpose: json['defaultPurpose'] as String?,
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  vendorName: json['vendorName'] as String?,
  vendorPolicyUrl: json['vendorPolicyUrl'] as String?,
  actions: (json['actions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, ZarazCustomManagedComponentActionsValue.fromJson(v as Map<String, dynamic>))),
  component: json['component'] as String,
  neoEvents: (json['neoEvents'] as List<dynamic>?)?.map((e) => ZarazCustomManagedComponentNeoEvents.fromJson(e as Map<String, dynamic>)).toList(),
  permissions: (json['permissions'] as List<dynamic>).map((e) => e as String).toList(),
  settings: json['settings'] as Map<String, dynamic>,
  type: ZarazCustomManagedComponentType.fromJson(json['type'] as String),
  worker: ZarazCustomManagedComponentWorker.fromJson(json['worker'] as Map<String, dynamic>),
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
final Map<String,ZarazCustomManagedComponentActionsValue>? actions;

/// Tool's internal name
final String component;

/// DEPRECATED - List of actions configured on a tool. Either this or actions field is required. If both are present, actions field will take precedence.
final List<ZarazCustomManagedComponentNeoEvents>? neoEvents;

/// List of permissions granted to the component
final List<String> permissions;

/// Tool's settings
final Map<String,dynamic> settings;

final ZarazCustomManagedComponentType type;

/// Cloudflare worker that acts as a managed component
final ZarazCustomManagedComponentWorker worker;

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
  'worker': worker.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('blockingTriggers') &&
      json.containsKey('defaultFields') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('component') && json['component'] is String &&
      json.containsKey('permissions') &&
      json.containsKey('settings') &&
      json.containsKey('type') &&
      json.containsKey('worker'); } 
ZarazCustomManagedComponent copyWith({List<String>? blockingTriggers, Map<String,dynamic>? defaultFields, String Function()? defaultPurpose, bool? enabled, String? name, String Function()? vendorName, String Function()? vendorPolicyUrl, Map<String, ZarazCustomManagedComponentActionsValue> Function()? actions, String? component, List<ZarazCustomManagedComponentNeoEvents> Function()? neoEvents, List<String>? permissions, Map<String,dynamic>? settings, ZarazCustomManagedComponentType? type, ZarazCustomManagedComponentWorker? worker, }) { return ZarazCustomManagedComponent(
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
  worker: worker ?? this.worker,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazCustomManagedComponent &&
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
          type == other.type &&
          worker == other.worker; } 
@override int get hashCode { return Object.hash(Object.hashAll(blockingTriggers), defaultFields, defaultPurpose, enabled, name, vendorName, vendorPolicyUrl, actions, component, Object.hashAll(neoEvents ?? const []), Object.hashAll(permissions), settings, type, worker); } 
@override String toString() { return 'ZarazCustomManagedComponent(blockingTriggers: $blockingTriggers, defaultFields: $defaultFields, defaultPurpose: $defaultPurpose, enabled: $enabled, name: $name, vendorName: $vendorName, vendorPolicyUrl: $vendorPolicyUrl, actions: $actions, component: $component, neoEvents: $neoEvents, permissions: $permissions, settings: $settings, type: $type, worker: $worker)'; } 
 }
