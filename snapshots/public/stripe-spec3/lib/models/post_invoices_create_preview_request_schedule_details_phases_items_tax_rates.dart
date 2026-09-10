// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2($value)'; } 
 }

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesItemsTaxRates(${toJson()})';
}
