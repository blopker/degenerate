// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates {
  const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2> postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesAddInvoiceItemsTaxRates(${toJson()})';
}
