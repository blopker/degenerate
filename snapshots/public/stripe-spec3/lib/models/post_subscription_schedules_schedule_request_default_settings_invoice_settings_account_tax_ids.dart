// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 {const PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2._(json),
}; }

static const PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds {
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2> postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestDefaultSettingsInvoiceSettingsAccountTaxIds(${toJson()})';
}
