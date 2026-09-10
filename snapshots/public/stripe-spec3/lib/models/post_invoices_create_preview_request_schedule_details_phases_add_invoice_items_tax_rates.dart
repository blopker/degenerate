// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAddInvoiceItemsTaxRates(${toJson()})';
}
