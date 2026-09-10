// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_balance_settings_request_payments_payouts_minimum_balance_by_currency_variant1_value.dart';@immutable final class PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2 {const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2._(this.value);

factory PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2._(json),
};}

static const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2 $empty = PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2._('');

static const List<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2($value)';}
}

@immutable
final class PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency {
  const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency({this.mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value = const Omittable.absent(),
this.postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency._({required this.rawValue, required this.mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value,
required this.postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2,});
  factory PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency.fromJson(Object? json) => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency._(
    rawValue: Omittable(json),
    mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value: parseAnyOfVariant<Map<String, PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value.fromJson(v)))),
postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2: parseAnyOfVariant<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2>(json, (value) => PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value>> mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value;
final Omittable<PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2> postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value.isPresent || postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value.isPresent) mapStringPostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant1Value.value?.map((k, v) => MapEntry(k, v.toJson())),
if (postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2.isPresent) postBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrencyVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBalanceSettingsRequestPaymentsPayoutsMinimumBalanceByCurrency(${toJson()})';
}
