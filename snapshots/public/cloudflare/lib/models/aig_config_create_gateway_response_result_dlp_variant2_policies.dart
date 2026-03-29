// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck {const AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck._(this.value);

factory AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck.fromJson(String json) { return switch (json) {
  'REQUEST' => request,
  'RESPONSE' => response,
  _ => AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck._(json),
}; }

static const AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck request = AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck._('REQUEST');

static const AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck response = AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck._('RESPONSE');

static const List<AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck> values = [request, response];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck($value)'; } 
 }
final class AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction {const AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction._(this.value);

factory AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction.fromJson(String json) { return switch (json) {
  'FLAG' => flag,
  'BLOCK' => block,
  _ => AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction._(json),
}; }

static const AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction flag = AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction._('FLAG');

static const AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction block = AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction._('BLOCK');

static const List<AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction> values = [flag, block];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction($value)'; } 
 }
final class AigConfigCreateGatewayResponseResultDlpVariant2Policies {const AigConfigCreateGatewayResponseResultDlpVariant2Policies({required this.action, required this.check, required this.enabled, required this.id, required this.profiles, });

factory AigConfigCreateGatewayResponseResultDlpVariant2Policies.fromJson(Map<String, dynamic> json) { return AigConfigCreateGatewayResponseResultDlpVariant2Policies(
  action: AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction.fromJson(json['action'] as String),
  check: (json['check'] as List<dynamic>).map((e) => AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck.fromJson(e as String)).toList(),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  profiles: (json['profiles'] as List<dynamic>).map((e) => e as String).toList(),
); }

final AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction action;

final List<AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck> check;

final bool enabled;

final String id;

final List<String> profiles;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'check': check.map((e) => e.toJson()).toList(),
  'enabled': enabled,
  'id': id,
  'profiles': profiles,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('check') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('profiles'); } 
AigConfigCreateGatewayResponseResultDlpVariant2Policies copyWith({AigConfigCreateGatewayResponseResultDlpVariant2PoliciesAction? action, List<AigConfigCreateGatewayResponseResultDlpVariant2PoliciesCheck>? check, bool? enabled, String? id, List<String>? profiles, }) { return AigConfigCreateGatewayResponseResultDlpVariant2Policies(
  action: action ?? this.action,
  check: check ?? this.check,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  profiles: profiles ?? this.profiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigCreateGatewayResponseResultDlpVariant2Policies &&
          action == other.action &&
          listEquals(check, other.check) &&
          enabled == other.enabled &&
          id == other.id &&
          listEquals(profiles, other.profiles); } 
@override int get hashCode { return Object.hash(action, Object.hashAll(check), enabled, id, Object.hashAll(profiles)); } 
@override String toString() { return 'AigConfigCreateGatewayResponseResultDlpVariant2Policies(action: $action, check: $check, enabled: $enabled, id: $id, profiles: $profiles)'; } 
 }
