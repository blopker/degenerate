// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates {
  const PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2> postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesDefaultTaxRates(${toJson()})';
}
