// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_settings_resource_payout_schedule.dart';/// Whether the funds in this account can be paid out.
@immutable final class BalanceSettingsResourcePayoutsStatus {const BalanceSettingsResourcePayoutsStatus._(this.value);

factory BalanceSettingsResourcePayoutsStatus.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => BalanceSettingsResourcePayoutsStatus._(json),
}; }

static const BalanceSettingsResourcePayoutsStatus disabled = BalanceSettingsResourcePayoutsStatus._('disabled');

static const BalanceSettingsResourcePayoutsStatus enabled = BalanceSettingsResourcePayoutsStatus._('enabled');

static const List<BalanceSettingsResourcePayoutsStatus> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BalanceSettingsResourcePayoutsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BalanceSettingsResourcePayoutsStatus($value)'; } 
 }
/// 
@immutable final class BalanceSettingsResourcePayouts {const BalanceSettingsResourcePayouts({required this.status, this.minimumBalanceByCurrency = const Omittable.absent(), this.schedule = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), });

factory BalanceSettingsResourcePayouts.fromJson(Map<String, dynamic> json) { return BalanceSettingsResourcePayouts(
  minimumBalanceByCurrency: json.containsKey('minimum_balance_by_currency') ? Omittable((json['minimum_balance_by_currency'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toInt()))) : const Omittable.absent(),
  schedule: json.containsKey('schedule') ? Omittable(json['schedule'] != null ? BalanceSettingsResourcePayoutSchedule.fromJson(json['schedule'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
  status: BalanceSettingsResourcePayoutsStatus.fromJson(json['status'] as String),
); }

/// The minimum balance amount to retain per currency after automatic payouts. Only funds that exceed these amounts are paid out. Learn more about the [minimum balances for automatic payouts](/payouts/minimum-balances-for-automatic-payouts).
final Omittable<Map<String,int>?> minimumBalanceByCurrency;

/// Details on when funds from charges are available, and when they are paid out to an external account. See our [Setting Bank and Debit Card Payouts](https://docs.stripe.com/connect/bank-transfers#payout-information) documentation for details.
final Omittable<BalanceSettingsResourcePayoutSchedule?> schedule;

/// The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
final Omittable<String?> statementDescriptor;

/// Whether the funds in this account can be paid out.
final BalanceSettingsResourcePayoutsStatus status;

Map<String, dynamic> toJson() { return {
  if (minimumBalanceByCurrency.isPresent) 'minimum_balance_by_currency': minimumBalanceByCurrency.value,
  if (schedule.isPresent) 'schedule': schedule.value?.toJson(),
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
BalanceSettingsResourcePayouts copyWith({Omittable<Map<String,int>?>? minimumBalanceByCurrency, Omittable<BalanceSettingsResourcePayoutSchedule?>? schedule, Omittable<String?>? statementDescriptor, BalanceSettingsResourcePayoutsStatus? status, }) { return BalanceSettingsResourcePayouts(
  minimumBalanceByCurrency: minimumBalanceByCurrency ?? this.minimumBalanceByCurrency,
  schedule: schedule ?? this.schedule,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BalanceSettingsResourcePayouts &&
          minimumBalanceByCurrency == other.minimumBalanceByCurrency &&
          schedule == other.schedule &&
          statementDescriptor == other.statementDescriptor &&
          status == other.status; } 
@override int get hashCode { return Object.hash(minimumBalanceByCurrency, schedule, statementDescriptor, status); } 
@override String toString() { return 'BalanceSettingsResourcePayouts(minimumBalanceByCurrency: $minimumBalanceByCurrency, schedule: $schedule, statementDescriptor: $statementDescriptor, status: $status)'; } 
 }
