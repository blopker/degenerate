// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_alert_interval.dart';import 'aaa_alert_type.dart';import 'aaa_enabled.dart';import 'aaa_filters.dart';import 'aaa_mechanisms.dart';import 'aaa_policy_id.dart';import 'aaa_schemas_description.dart';import 'aaa_schemas_name.dart';extension type AaaTimestamp(DateTime value) {
factory AaaTimestamp.fromJson(String json) => AaaTimestamp(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class AaaPolicies {const AaaPolicies({this.alertInterval, this.alertType, this.created, this.description, this.enabled, this.filters, this.id, this.mechanisms, this.modified, this.name, });

factory AaaPolicies.fromJson(Map<String, dynamic> json) { return AaaPolicies(
  alertInterval: json['alert_interval'] != null ? AaaAlertInterval.fromJson(json['alert_interval'] as String) : null,
  alertType: json['alert_type'] != null ? AaaAlertType.fromJson(json['alert_type'] as String) : null,
  created: json['created'] != null ? AaaTimestamp.fromJson(json['created'] as String) : null,
  description: json['description'] != null ? AaaSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: json['enabled'] != null ? AaaEnabled.fromJson(json['enabled'] as bool) : null,
  filters: json['filters'] != null ? AaaFilters.fromJson(json['filters'] as Map<String, dynamic>) : null,
  id: json['id'] != null ? AaaPolicyId.fromJson(json['id'] as String) : null,
  mechanisms: json['mechanisms'] != null ? AaaMechanisms.fromJson(json['mechanisms'] as Map<String, dynamic>) : null,
  modified: json['modified'] != null ? AaaTimestamp.fromJson(json['modified'] as String) : null,
  name: json['name'] != null ? AaaSchemasName.fromJson(json['name'] as String) : null,
); }

/// Optional specification of how often to re-alert from the same incident, not support on all alert types.
final AaaAlertInterval? alertInterval;

/// Refers to which event will trigger a Notification dispatch. You can use the endpoint to get available alert types which then will give you a list of possible values.
final AaaAlertType? alertType;

final AaaTimestamp? created;

final AaaSchemasDescription? description;

/// Whether or not the Notification policy is enabled.
final AaaEnabled? enabled;

final AaaFilters? filters;

final AaaPolicyId? id;

final AaaMechanisms? mechanisms;

final AaaTimestamp? modified;

final AaaSchemasName? name;

Map<String, dynamic> toJson() { return {
  if (alertInterval != null) 'alert_interval': alertInterval?.toJson(),
  if (alertType != null) 'alert_type': alertType?.toJson(),
  if (created != null) 'created': created?.toJson(),
  if (description != null) 'description': description?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (filters != null) 'filters': filters?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (mechanisms != null) 'mechanisms': mechanisms?.toJson(),
  if (modified != null) 'modified': modified?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alert_interval', 'alert_type', 'created', 'description', 'enabled', 'filters', 'id', 'mechanisms', 'modified', 'name'}.contains(key)); } 
AaaPolicies copyWith({AaaAlertInterval Function()? alertInterval, AaaAlertType Function()? alertType, AaaTimestamp Function()? created, AaaSchemasDescription Function()? description, AaaEnabled Function()? enabled, AaaFilters Function()? filters, AaaPolicyId Function()? id, AaaMechanisms Function()? mechanisms, AaaTimestamp Function()? modified, AaaSchemasName Function()? name, }) { return AaaPolicies(
  alertInterval: alertInterval != null ? alertInterval() : this.alertInterval,
  alertType: alertType != null ? alertType() : this.alertType,
  created: created != null ? created() : this.created,
  description: description != null ? description() : this.description,
  enabled: enabled != null ? enabled() : this.enabled,
  filters: filters != null ? filters() : this.filters,
  id: id != null ? id() : this.id,
  mechanisms: mechanisms != null ? mechanisms() : this.mechanisms,
  modified: modified != null ? modified() : this.modified,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaPolicies &&
          alertInterval == other.alertInterval &&
          alertType == other.alertType &&
          created == other.created &&
          description == other.description &&
          enabled == other.enabled &&
          filters == other.filters &&
          id == other.id &&
          mechanisms == other.mechanisms &&
          modified == other.modified &&
          name == other.name; } 
@override int get hashCode { return Object.hash(alertInterval, alertType, created, description, enabled, filters, id, mechanisms, modified, name); } 
@override String toString() { return 'AaaPolicies(alertInterval: $alertInterval, alertType: $alertType, created: $created, description: $description, enabled: $enabled, filters: $filters, id: $id, mechanisms: $mechanisms, modified: $modified, name: $name)'; } 
 }
