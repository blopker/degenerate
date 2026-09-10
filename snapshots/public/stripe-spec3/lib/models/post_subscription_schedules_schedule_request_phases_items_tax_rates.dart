// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates {
  const PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2> postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesItemsTaxRates(${toJson()})';
}
