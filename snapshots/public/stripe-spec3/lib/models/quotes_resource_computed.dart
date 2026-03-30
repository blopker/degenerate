// GENERATED CODE - DO NOT MODIFY BY HAND

import 'quotes_resource_recurring.dart';import 'quotes_resource_upfront.dart';/// 
final class QuotesResourceComputed {const QuotesResourceComputed({this.recurring, required this.upfront, });

factory QuotesResourceComputed.fromJson(Map<String, dynamic> json) { return QuotesResourceComputed(
  recurring: json['recurring'] != null ? QuotesResourceRecurring.fromJson(json['recurring'] as Map<String, dynamic>) : null,
  upfront: QuotesResourceUpfront.fromJson(json['upfront'] as Map<String, dynamic>),
); }

/// The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
final QuotesResourceRecurring? recurring;

final QuotesResourceUpfront upfront;

Map<String, dynamic> toJson() { return {
  if (recurring != null) 'recurring': recurring?.toJson(),
  'upfront': upfront.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('upfront'); } 
QuotesResourceComputed copyWith({QuotesResourceRecurring? Function()? recurring, QuotesResourceUpfront? upfront, }) { return QuotesResourceComputed(
  recurring: recurring != null ? recurring() : this.recurring,
  upfront: upfront ?? this.upfront,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QuotesResourceComputed &&
          recurring == other.recurring &&
          upfront == other.upfront; } 
@override int get hashCode { return Object.hash(recurring, upfront); } 
@override String toString() { return 'QuotesResourceComputed(recurring: $recurring, upfront: $upfront)'; } 
 }
