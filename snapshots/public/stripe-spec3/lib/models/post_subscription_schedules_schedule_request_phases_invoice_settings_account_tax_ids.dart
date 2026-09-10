// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 {const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2._(this.value);

factory PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2._(json),
};}

static const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 $empty = PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2._('');

static const List<PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds {
  const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2,});
  factory PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds.fromJson(Object? json) => PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2: parseAnyOfVariant<PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2>(json, (value) => PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2> postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.isPresent) postSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIdsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesScheduleRequestPhasesInvoiceSettingsAccountTaxIds(${toJson()})';
}
