// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_schedules_resource_invoice_item_period_resource_period_end.dart';import 'subscription_schedules_resource_invoice_item_period_resource_period_start.dart';/// 
@immutable final class SubscriptionScheduleAddInvoiceItemPeriod {const SubscriptionScheduleAddInvoiceItemPeriod({required this.end, required this.start, });

factory SubscriptionScheduleAddInvoiceItemPeriod.fromJson(Map<String, dynamic> json) { return SubscriptionScheduleAddInvoiceItemPeriod(
  end: SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd.fromJson(json['end'] as Map<String, dynamic>),
  start: SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart.fromJson(json['start'] as Map<String, dynamic>),
); }

final SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd end;

final SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart start;

Map<String, dynamic> toJson() { return {
  'end': end.toJson(),
  'start': start.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end') &&
      json.containsKey('start'); } 
SubscriptionScheduleAddInvoiceItemPeriod copyWith({SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodEnd? end, SubscriptionSchedulesResourceInvoiceItemPeriodResourcePeriodStart? start, }) { return SubscriptionScheduleAddInvoiceItemPeriod(
  end: end ?? this.end,
  start: start ?? this.start,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionScheduleAddInvoiceItemPeriod &&
          end == other.end &&
          start == other.start; } 
@override int get hashCode { return Object.hash(end, start); } 
@override String toString() { return 'SubscriptionScheduleAddInvoiceItemPeriod(end: $end, start: $start)'; } 
 }
