// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Restricts all inbound money movement.
@immutable final class TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows {const TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows._(this.value);

factory TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows.fromJson(String json) { return switch (json) {
  'restricted' => restricted,
  'unrestricted' => unrestricted,
  _ => TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows._(json),
}; }

static const TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows restricted = TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows._('restricted');

static const TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows unrestricted = TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows._('unrestricted');

static const List<TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows> values = [restricted, unrestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows($value)'; } 
 }
/// Restricts all outbound money movement.
@immutable final class TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows {const TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows._(this.value);

factory TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows.fromJson(String json) { return switch (json) {
  'restricted' => restricted,
  'unrestricted' => unrestricted,
  _ => TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows._(json),
}; }

static const TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows restricted = TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows._('restricted');

static const TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows unrestricted = TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows._('unrestricted');

static const List<TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows> values = [restricted, unrestricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows($value)'; } 
 }
/// Restrictions that a Connect Platform has placed on this FinancialAccount.
@immutable final class TreasuryFinancialAccountsResourcePlatformRestrictions {const TreasuryFinancialAccountsResourcePlatformRestrictions({this.inboundFlows = const Omittable.absent(), this.outboundFlows = const Omittable.absent(), });

factory TreasuryFinancialAccountsResourcePlatformRestrictions.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourcePlatformRestrictions(
  inboundFlows: json.containsKey('inbound_flows') ? Omittable(json['inbound_flows'] != null ? TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows.fromJson(json['inbound_flows'] as String) : null) : const Omittable.absent(),
  outboundFlows: json.containsKey('outbound_flows') ? Omittable(json['outbound_flows'] != null ? TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows.fromJson(json['outbound_flows'] as String) : null) : const Omittable.absent(),
); }

/// Restricts all inbound money movement.
final Omittable<TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows?> inboundFlows;

/// Restricts all outbound money movement.
final Omittable<TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows?> outboundFlows;

Map<String, dynamic> toJson() { return {
  if (inboundFlows.isPresent) 'inbound_flows': inboundFlows.value?.toJson(),
  if (outboundFlows.isPresent) 'outbound_flows': outboundFlows.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'inbound_flows', 'outbound_flows'}.contains(key)); } 
TreasuryFinancialAccountsResourcePlatformRestrictions copyWith({Omittable<TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows?>? inboundFlows, Omittable<TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows?>? outboundFlows, }) { return TreasuryFinancialAccountsResourcePlatformRestrictions(
  inboundFlows: inboundFlows ?? this.inboundFlows,
  outboundFlows: outboundFlows ?? this.outboundFlows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourcePlatformRestrictions &&
          inboundFlows == other.inboundFlows &&
          outboundFlows == other.outboundFlows; } 
@override int get hashCode { return Object.hash(inboundFlows, outboundFlows); } 
@override String toString() { return 'TreasuryFinancialAccountsResourcePlatformRestrictions(inboundFlows: $inboundFlows, outboundFlows: $outboundFlows)'; } 
 }
