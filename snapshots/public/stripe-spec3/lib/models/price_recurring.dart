// GENERATED CODE - DO NOT MODIFY BY HAND

import 'recurring.dart';/// The recurring components of a price such as `interval` and `usage_type`.
final class PriceRecurring {const PriceRecurring({this.recurring});

factory PriceRecurring.fromJson(Map<String, dynamic> json) { return PriceRecurring(
  recurring: Recurring.canParse(json) ? Recurring.fromJson(json) : null,
); }

final Recurring? recurring;

/// At least one variant must be present.
bool get isValid { return recurring != null; } 
Map<String, dynamic> toJson() { return {
  ...?recurring?.toJson(),
}; } 
 }
