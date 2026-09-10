// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 {const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2._(this.value);

factory PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2._(json),
};}

static const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 $empty = PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2._('');

static const List<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2($value)';}
}

@immutable
final class PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value {
  const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value({this.$int = const Omittable.absent(),
this.postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value._({required this.rawValue, required this.$int,
required this.postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2,});
  factory PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value.fromJson(Object? json) => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2: parseAnyOfVariant<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2>(json, (value) => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2> postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2.isPresent) postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1ValueVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value(${toJson()})';
}
