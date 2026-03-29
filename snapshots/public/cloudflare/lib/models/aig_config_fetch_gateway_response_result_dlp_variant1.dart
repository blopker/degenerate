// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AigConfigFetchGatewayResponseResultDlpVariant1Action {const AigConfigFetchGatewayResponseResultDlpVariant1Action._(this.value);

factory AigConfigFetchGatewayResponseResultDlpVariant1Action.fromJson(String json) { return switch (json) {
  'BLOCK' => block,
  'FLAG' => flag,
  _ => AigConfigFetchGatewayResponseResultDlpVariant1Action._(json),
}; }

static const AigConfigFetchGatewayResponseResultDlpVariant1Action block = AigConfigFetchGatewayResponseResultDlpVariant1Action._('BLOCK');

static const AigConfigFetchGatewayResponseResultDlpVariant1Action flag = AigConfigFetchGatewayResponseResultDlpVariant1Action._('FLAG');

static const List<AigConfigFetchGatewayResponseResultDlpVariant1Action> values = [block, flag];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigFetchGatewayResponseResultDlpVariant1Action && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigFetchGatewayResponseResultDlpVariant1Action($value)'; } 
 }
final class AigConfigFetchGatewayResponseResultDlpVariant1 {const AigConfigFetchGatewayResponseResultDlpVariant1({required this.action, required this.enabled, required this.profiles, });

factory AigConfigFetchGatewayResponseResultDlpVariant1.fromJson(Map<String, dynamic> json) { return AigConfigFetchGatewayResponseResultDlpVariant1(
  action: AigConfigFetchGatewayResponseResultDlpVariant1Action.fromJson(json['action'] as String),
  enabled: json['enabled'] as bool,
  profiles: (json['profiles'] as List<dynamic>).map((e) => e as String).toList(),
); }

final AigConfigFetchGatewayResponseResultDlpVariant1Action action;

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
AigConfigFetchGatewayResponseResultDlpVariant1 copyWith({AigConfigFetchGatewayResponseResultDlpVariant1Action? action, bool? enabled, List<String>? profiles, }) { return AigConfigFetchGatewayResponseResultDlpVariant1(
  action: action ?? this.action,
  enabled: enabled ?? this.enabled,
  profiles: profiles ?? this.profiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigFetchGatewayResponseResultDlpVariant1 &&
          action == other.action &&
          enabled == other.enabled &&
          listEquals(profiles, other.profiles); } 
@override int get hashCode { return Object.hash(action, enabled, Object.hashAll(profiles)); } 
@override String toString() { return 'AigConfigFetchGatewayResponseResultDlpVariant1(action: $action, enabled: $enabled, profiles: $profiles)'; } 
 }
