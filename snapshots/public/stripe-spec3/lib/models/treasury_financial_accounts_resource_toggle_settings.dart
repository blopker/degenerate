// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_financial_accounts_resource_toggles_setting_status_details.dart';/// Whether the Feature is operational.
@immutable final class TreasuryFinancialAccountsResourceToggleSettingsStatus {const TreasuryFinancialAccountsResourceToggleSettingsStatus._(this.value);

factory TreasuryFinancialAccountsResourceToggleSettingsStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'pending' => pending,
  'restricted' => restricted,
  _ => TreasuryFinancialAccountsResourceToggleSettingsStatus._(json),
}; }

static const TreasuryFinancialAccountsResourceToggleSettingsStatus active = TreasuryFinancialAccountsResourceToggleSettingsStatus._('active');

static const TreasuryFinancialAccountsResourceToggleSettingsStatus pending = TreasuryFinancialAccountsResourceToggleSettingsStatus._('pending');

static const TreasuryFinancialAccountsResourceToggleSettingsStatus restricted = TreasuryFinancialAccountsResourceToggleSettingsStatus._('restricted');

static const List<TreasuryFinancialAccountsResourceToggleSettingsStatus> values = [active, pending, restricted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountsResourceToggleSettingsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountsResourceToggleSettingsStatus($value)'; } 
 }
/// Toggle settings for enabling/disabling a feature
@immutable final class TreasuryFinancialAccountsResourceToggleSettings {const TreasuryFinancialAccountsResourceToggleSettings({required this.requested, required this.status, required this.statusDetails, });

factory TreasuryFinancialAccountsResourceToggleSettings.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourceToggleSettings(
  requested: json['requested'] as bool,
  status: TreasuryFinancialAccountsResourceToggleSettingsStatus.fromJson(json['status'] as String),
  statusDetails: (json['status_details'] as List<dynamic>).map((e) => TreasuryFinancialAccountsResourceTogglesSettingStatusDetails.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Whether the FinancialAccount should have the Feature.
final bool requested;

/// Whether the Feature is operational.
final TreasuryFinancialAccountsResourceToggleSettingsStatus status;

/// Additional details; includes at least one entry when the status is not `active`.
final List<TreasuryFinancialAccountsResourceTogglesSettingStatusDetails> statusDetails;

Map<String, dynamic> toJson() { return {
  'requested': requested,
  'status': status.toJson(),
  'status_details': statusDetails.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested') && json['requested'] is bool &&
      json.containsKey('status') &&
      json.containsKey('status_details'); } 
TreasuryFinancialAccountsResourceToggleSettings copyWith({bool? requested, TreasuryFinancialAccountsResourceToggleSettingsStatus? status, List<TreasuryFinancialAccountsResourceTogglesSettingStatusDetails>? statusDetails, }) { return TreasuryFinancialAccountsResourceToggleSettings(
  requested: requested ?? this.requested,
  status: status ?? this.status,
  statusDetails: statusDetails ?? this.statusDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourceToggleSettings &&
          requested == other.requested &&
          status == other.status &&
          listEquals(statusDetails, other.statusDetails); } 
@override int get hashCode { return Object.hash(requested, status, Object.hashAll(statusDetails)); } 
@override String toString() { return 'TreasuryFinancialAccountsResourceToggleSettings(requested: $requested, status: $status, statusDetails: $statusDetails)'; } 
 }
