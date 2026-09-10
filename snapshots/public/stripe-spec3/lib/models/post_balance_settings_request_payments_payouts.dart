// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_balance_settings_request_payments_payouts_minimum_balance_by_currency.dart';import 'post_balance_settings_request_payments_payouts_schedule.dart';@immutable final class PostBalanceSettingsRequestPaymentsPayouts {const PostBalanceSettingsRequestPaymentsPayouts({this.minimumBalanceByCurrency, this.schedule, this.statementDescriptor, });

factory PostBalanceSettingsRequestPaymentsPayouts.fromJson(Map<String, dynamic> json) {return PostBalanceSettingsRequestPaymentsPayouts(
  minimumBalanceByCurrency: json['minimum_balance_by_currency'] != null ? PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency.fromJson(json['minimum_balance_by_currency']) : null,
  schedule: json['schedule'] != null ? PostBalanceSettingsRequestPaymentsPayoutsSchedule.fromJson(json['schedule'] as Map<String, dynamic>) : null,
  statementDescriptor: json['statement_descriptor'] as String?,
);}

final PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency? minimumBalanceByCurrency;

final PostBalanceSettingsRequestPaymentsPayoutsSchedule? schedule;

final String? statementDescriptor;

Map<String, dynamic> toJson() {return {
  if (minimumBalanceByCurrency != null) 'minimum_balance_by_currency': minimumBalanceByCurrency?.toJson(),
  if (schedule != null) 'schedule': schedule?.toJson(),
  'statement_descriptor': ?statementDescriptor,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'minimum_balance_by_currency', 'schedule', 'statement_descriptor'}.contains(key));}
PostBalanceSettingsRequestPaymentsPayouts copyWith({PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency? Function()? minimumBalanceByCurrency, PostBalanceSettingsRequestPaymentsPayoutsSchedule? Function()? schedule, String? Function()? statementDescriptor, }) {return PostBalanceSettingsRequestPaymentsPayouts(
  minimumBalanceByCurrency: minimumBalanceByCurrency != null ? minimumBalanceByCurrency() : this.minimumBalanceByCurrency,
  schedule: schedule != null ? schedule() : this.schedule,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is PostBalanceSettingsRequestPaymentsPayouts &&
          minimumBalanceByCurrency == other.minimumBalanceByCurrency &&
          schedule == other.schedule &&
          statementDescriptor == other.statementDescriptor;}
@override int get hashCode {return Object.hash(minimumBalanceByCurrency, schedule, statementDescriptor);}
@override String toString() {return 'PostBalanceSettingsRequestPaymentsPayouts(minimumBalanceByCurrency: $minimumBalanceByCurrency, schedule: $schedule, statementDescriptor: $statementDescriptor)';}
}
