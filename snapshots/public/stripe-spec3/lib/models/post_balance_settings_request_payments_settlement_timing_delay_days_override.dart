// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 {const PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2._(this.value);

factory PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2._(json),
}; }

static const PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 $empty = PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2._('');

static const List<PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2($value)'; } 
 }

@immutable
final class PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride {
  const PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride({this.$int = const Omittable.absent(),
this.postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride._({required this.rawValue, required this.$int,
required this.postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2,});
  factory PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride.fromJson(Object? json) => PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2: parseAnyOfVariant<PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2>(json, (value) => PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2> postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.isPresent) postBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverrideVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBalanceSettingsRequestPaymentsSettlementTimingDelayDaysOverride(${toJson()})';
}
