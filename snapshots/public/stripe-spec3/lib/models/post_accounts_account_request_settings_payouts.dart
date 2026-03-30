// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_request_settings_payouts_schedule.dart';final class PostAccountsAccountRequestSettingsPayouts {const PostAccountsAccountRequestSettingsPayouts({this.debitNegativeBalances, this.schedule, this.statementDescriptor, });

factory PostAccountsAccountRequestSettingsPayouts.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestSettingsPayouts(
  debitNegativeBalances: json['debit_negative_balances'] as bool?,
  schedule: json['schedule'] != null ? PostAccountsAccountRequestSettingsPayoutsSchedule.fromJson(json['schedule'] as Map<String, dynamic>) : null,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

final bool? debitNegativeBalances;

final PostAccountsAccountRequestSettingsPayoutsSchedule? schedule;

final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'debit_negative_balances': ?debitNegativeBalances,
  if (schedule != null) 'schedule': schedule?.toJson(),
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'debit_negative_balances', 'schedule', 'statement_descriptor'}.contains(key)); } 
PostAccountsAccountRequestSettingsPayouts copyWith({bool Function()? debitNegativeBalances, PostAccountsAccountRequestSettingsPayoutsSchedule Function()? schedule, String Function()? statementDescriptor, }) { return PostAccountsAccountRequestSettingsPayouts(
  debitNegativeBalances: debitNegativeBalances != null ? debitNegativeBalances() : this.debitNegativeBalances,
  schedule: schedule != null ? schedule() : this.schedule,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestSettingsPayouts &&
          debitNegativeBalances == other.debitNegativeBalances &&
          schedule == other.schedule &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(debitNegativeBalances, schedule, statementDescriptor); } 
@override String toString() { return 'PostAccountsAccountRequestSettingsPayouts(debitNegativeBalances: $debitNegativeBalances, schedule: $schedule, statementDescriptor: $statementDescriptor)'; } 
 }
