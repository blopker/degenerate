// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1 {const PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1._(this.value);

factory PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1.fromJson(String json) { return switch (json) {
  'minimum' => minimum,
  _ => PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1._(json),
}; }

static const PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1 minimum = PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1._('minimum');

static const List<PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1> values = [minimum];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1($value)'; } 
 }
typedef PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays = OneOf2<PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1,int>;