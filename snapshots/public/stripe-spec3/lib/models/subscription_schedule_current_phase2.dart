// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscription_schedule_current_phase.dart';/// Object representing the start and end dates for the current phase of the subscription schedule, if it is `active`.
final class SubscriptionScheduleCurrentPhase2 {const SubscriptionScheduleCurrentPhase2({this.subscriptionScheduleCurrentPhase});

factory SubscriptionScheduleCurrentPhase2.fromJson(Map<String, dynamic> json) { return SubscriptionScheduleCurrentPhase2(
  subscriptionScheduleCurrentPhase: SubscriptionScheduleCurrentPhase.canParse(json) ? SubscriptionScheduleCurrentPhase.fromJson(json) : null,
); }

final SubscriptionScheduleCurrentPhase? subscriptionScheduleCurrentPhase;

/// At least one variant must be present.
bool get isValid { return subscriptionScheduleCurrentPhase != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionScheduleCurrentPhase?.toJson(),
}; } 
 }
