// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class BillingUpdateBudgetOrgRequestBudgetAlerting {const BillingUpdateBudgetOrgRequestBudgetAlerting({this.willAlert, this.alertRecipients, });

factory BillingUpdateBudgetOrgRequestBudgetAlerting.fromJson(Map<String, dynamic> json) { return BillingUpdateBudgetOrgRequestBudgetAlerting(
  willAlert: json['will_alert'] as bool?,
  alertRecipients: (json['alert_recipients'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Whether alerts are enabled for this budget
final bool? willAlert;

/// Array of user login names who will receive alerts
final List<String>? alertRecipients;

Map<String, dynamic> toJson() { return {
  'will_alert': ?willAlert,
  'alert_recipients': ?alertRecipients,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'will_alert', 'alert_recipients'}.contains(key)); } 
BillingUpdateBudgetOrgRequestBudgetAlerting copyWith({bool Function()? willAlert, List<String> Function()? alertRecipients, }) { return BillingUpdateBudgetOrgRequestBudgetAlerting(
  willAlert: willAlert != null ? willAlert() : this.willAlert,
  alertRecipients: alertRecipients != null ? alertRecipients() : this.alertRecipients,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingUpdateBudgetOrgRequestBudgetAlerting &&
          willAlert == other.willAlert &&
          listEquals(alertRecipients, other.alertRecipients); } 
@override int get hashCode { return Object.hash(willAlert, Object.hashAll(alertRecipients ?? const [])); } 
@override String toString() { return 'BillingUpdateBudgetOrgRequestBudgetAlerting(willAlert: $willAlert, alertRecipients: $alertRecipients)'; } 
 }
