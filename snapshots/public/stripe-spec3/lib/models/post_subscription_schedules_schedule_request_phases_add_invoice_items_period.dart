// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscription_schedules_schedule_request_phases_add_invoice_items_period_end.dart';import 'post_subscription_schedules_schedule_request_phases_add_invoice_items_period_start.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod {const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod({required this.end, required this.start, });

factory PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod.fromJson(Map<String, dynamic> json) { return PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod(
  end: PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriodEnd.fromJson(json['end'] as Map<String, dynamic>),
  start: PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriodStart.fromJson(json['start'] as Map<String, dynamic>),
); }

final PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriodEnd end;

final PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriodStart start;

Map<String, dynamic> toJson() { return {
  'end': end.toJson(),
  'start': start.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end') &&
      json.containsKey('start'); } 
PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod copyWith({PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriodEnd? end, PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriodStart? start, }) { return PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod(
  end: end ?? this.end,
  start: start ?? this.start,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod &&
          end == other.end &&
          start == other.start; } 
@override int get hashCode { return Object.hash(end, start); } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsPeriod(end: $end, start: $start)'; } 
 }
