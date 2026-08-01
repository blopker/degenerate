// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_schedule.dart';/// 
@immutable final class AccountPayoutSettings {const AccountPayoutSettings({required this.debitNegativeBalances, required this.schedule, this.statementDescriptor = const Omittable.absent(), });

factory AccountPayoutSettings.fromJson(Map<String, dynamic> json) { return AccountPayoutSettings(
  debitNegativeBalances: json['debit_negative_balances'] as bool,
  schedule: TransferSchedule.fromJson(json['schedule'] as Map<String, dynamic>),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
); }

/// A Boolean indicating if Stripe should try to reclaim negative balances from an attached bank account. See [Understanding Connect account balances](/connect/account-balances) for details. The default value is `false` when [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts, otherwise `true`.
final bool debitNegativeBalances;

final TransferSchedule schedule;

/// The text that appears on the bank account statement for payouts. If not set, this defaults to the platform's bank descriptor as set in the Dashboard.
final Omittable<String?> statementDescriptor;

Map<String, dynamic> toJson() { return {
  'debit_negative_balances': debitNegativeBalances,
  'schedule': schedule.toJson(),
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('debit_negative_balances') && json['debit_negative_balances'] is bool &&
      json.containsKey('schedule'); } 
AccountPayoutSettings copyWith({bool? debitNegativeBalances, TransferSchedule? schedule, Omittable<String?>? statementDescriptor, }) { return AccountPayoutSettings(
  debitNegativeBalances: debitNegativeBalances ?? this.debitNegativeBalances,
  schedule: schedule ?? this.schedule,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountPayoutSettings &&
          debitNegativeBalances == other.debitNegativeBalances &&
          schedule == other.schedule &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(debitNegativeBalances, schedule, statementDescriptor); } 
@override String toString() { return 'AccountPayoutSettings(debitNegativeBalances: $debitNegativeBalances, schedule: $schedule, statementDescriptor: $statementDescriptor)'; } 
 }
