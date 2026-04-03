// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteGatewayResponseResultDlpVariant1Action {const AigConfigDeleteGatewayResponseResultDlpVariant1Action._(this.value);

factory AigConfigDeleteGatewayResponseResultDlpVariant1Action.fromJson(String json) { return switch (json) {
  'BLOCK' => block,
  'FLAG' => flag,
  _ => AigConfigDeleteGatewayResponseResultDlpVariant1Action._(json),
}; }

static const AigConfigDeleteGatewayResponseResultDlpVariant1Action block = AigConfigDeleteGatewayResponseResultDlpVariant1Action._('BLOCK');

static const AigConfigDeleteGatewayResponseResultDlpVariant1Action flag = AigConfigDeleteGatewayResponseResultDlpVariant1Action._('FLAG');

static const List<AigConfigDeleteGatewayResponseResultDlpVariant1Action> values = [block, flag];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigDeleteGatewayResponseResultDlpVariant1Action && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayResponseResultDlpVariant1Action($value)'; } 
 }
@immutable final class AigConfigDeleteGatewayResponseResultDlpVariant1 {const AigConfigDeleteGatewayResponseResultDlpVariant1({required this.action, required this.enabled, required this.profiles, });

factory AigConfigDeleteGatewayResponseResultDlpVariant1.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayResponseResultDlpVariant1(
  action: AigConfigDeleteGatewayResponseResultDlpVariant1Action.fromJson(json['action'] as String),
  enabled: json['enabled'] as bool,
  profiles: (json['profiles'] as List<dynamic>).map((e) => e as String).toList(),
); }

final AigConfigDeleteGatewayResponseResultDlpVariant1Action action;

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
AigConfigDeleteGatewayResponseResultDlpVariant1 copyWith({AigConfigDeleteGatewayResponseResultDlpVariant1Action? action, bool? enabled, List<String>? profiles, }) { return AigConfigDeleteGatewayResponseResultDlpVariant1(
  action: action ?? this.action,
  enabled: enabled ?? this.enabled,
  profiles: profiles ?? this.profiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayResponseResultDlpVariant1 &&
          action == other.action &&
          enabled == other.enabled &&
          listEquals(profiles, other.profiles); } 
@override int get hashCode { return Object.hash(action, enabled, Object.hashAll(profiles)); } 
@override String toString() { return 'AigConfigDeleteGatewayResponseResultDlpVariant1(action: $action, enabled: $enabled, profiles: $profiles)'; } 
 }
