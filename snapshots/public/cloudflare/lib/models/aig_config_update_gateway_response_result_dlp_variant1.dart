// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigUpdateGatewayResponseResultDlpVariant1Action {const AigConfigUpdateGatewayResponseResultDlpVariant1Action._(this.value);

factory AigConfigUpdateGatewayResponseResultDlpVariant1Action.fromJson(String json) { return switch (json) {
  'BLOCK' => block,
  'FLAG' => flag,
  _ => AigConfigUpdateGatewayResponseResultDlpVariant1Action._(json),
}; }

static const AigConfigUpdateGatewayResponseResultDlpVariant1Action block = AigConfigUpdateGatewayResponseResultDlpVariant1Action._('BLOCK');

static const AigConfigUpdateGatewayResponseResultDlpVariant1Action flag = AigConfigUpdateGatewayResponseResultDlpVariant1Action._('FLAG');

static const List<AigConfigUpdateGatewayResponseResultDlpVariant1Action> values = [block, flag];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayResponseResultDlpVariant1Action && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResultDlpVariant1Action($value)'; } 
 }
@immutable final class AigConfigUpdateGatewayResponseResultDlpVariant1 {const AigConfigUpdateGatewayResponseResultDlpVariant1({required this.action, required this.enabled, required this.profiles, });

factory AigConfigUpdateGatewayResponseResultDlpVariant1.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayResponseResultDlpVariant1(
  action: AigConfigUpdateGatewayResponseResultDlpVariant1Action.fromJson(json['action'] as String),
  enabled: json['enabled'] as bool,
  profiles: (json['profiles'] as List<dynamic>).map((e) => e as String).toList(),
); }

final AigConfigUpdateGatewayResponseResultDlpVariant1Action action;

final bool enabled;

final List<String> profiles;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'enabled': enabled,
  'profiles': profiles,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('profiles'); } 
AigConfigUpdateGatewayResponseResultDlpVariant1 copyWith({AigConfigUpdateGatewayResponseResultDlpVariant1Action? action, bool? enabled, List<String>? profiles, }) { return AigConfigUpdateGatewayResponseResultDlpVariant1(
  action: action ?? this.action,
  enabled: enabled ?? this.enabled,
  profiles: profiles ?? this.profiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayResponseResultDlpVariant1 &&
          action == other.action &&
          enabled == other.enabled &&
          listEquals(profiles, other.profiles); } 
@override int get hashCode { return Object.hash(action, enabled, Object.hashAll(profiles)); } 
@override String toString() { return 'AigConfigUpdateGatewayResponseResultDlpVariant1(action: $action, enabled: $enabled, profiles: $profiles)'; } 
 }
