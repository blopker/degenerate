// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'interaction_group.dart';/// The duration of the interaction restriction. Default: `one_day`.
@immutable final class InteractionExpiry {const InteractionExpiry._(this.value);

factory InteractionExpiry.fromJson(String json) { return switch (json) {
  'one_day' => oneDay,
  'three_days' => threeDays,
  'one_week' => oneWeek,
  'one_month' => oneMonth,
  'six_months' => sixMonths,
  _ => InteractionExpiry._(json),
}; }

static const InteractionExpiry oneDay = InteractionExpiry._('one_day');

static const InteractionExpiry threeDays = InteractionExpiry._('three_days');

static const InteractionExpiry oneWeek = InteractionExpiry._('one_week');

static const InteractionExpiry oneMonth = InteractionExpiry._('one_month');

static const InteractionExpiry sixMonths = InteractionExpiry._('six_months');

static const List<InteractionExpiry> values = [oneDay, threeDays, oneWeek, oneMonth, sixMonths];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InteractionExpiry && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InteractionExpiry($value)'; } 
 }
/// Limit interactions to a specific type of user for a specified duration
@immutable final class InteractionLimit {const InteractionLimit({required this.limit, this.expiry, });

factory InteractionLimit.fromJson(Map<String, dynamic> json) { return InteractionLimit(
  limit: InteractionGroup.fromJson(json['limit'] as String),
  expiry: json['expiry'] != null ? InteractionExpiry.fromJson(json['expiry'] as String) : null,
); }

/// The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect.
final InteractionGroup limit;

/// The duration of the interaction restriction. Default: `one_day`.
final InteractionExpiry? expiry;

Map<String, dynamic> toJson() { return {
  'limit': limit.toJson(),
  if (expiry != null) 'expiry': expiry?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('limit'); } 
InteractionLimit copyWith({InteractionGroup? limit, InteractionExpiry Function()? expiry, }) { return InteractionLimit(
  limit: limit ?? this.limit,
  expiry: expiry != null ? expiry() : this.expiry,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InteractionLimit &&
          limit == other.limit &&
          expiry == other.expiry; } 
@override int get hashCode { return Object.hash(limit, expiry); } 
@override String toString() { return 'InteractionLimit(limit: $limit, expiry: $expiry)'; } 
 }
