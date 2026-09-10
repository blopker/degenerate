// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1 {const PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1._(this.value);

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

@immutable
final class PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays {
  const PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays({this.postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays._({required this.rawValue, required this.postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1,
required this.$int,});
  factory PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays.fromJson(Object? json) => PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays._(
    rawValue: Omittable(json),
    postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1: parseAnyOfVariant<PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1>(json, (value) => PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1.fromJson(value! as String)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PostAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1> postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1.isPresent) postAccountsAccountRequestSettingsPayoutsScheduleDelayDaysVariant1.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestSettingsPayoutsScheduleDelayDays(${toJson()})';
}
