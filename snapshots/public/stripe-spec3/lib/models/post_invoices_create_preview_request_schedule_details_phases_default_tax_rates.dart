// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates {
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2,});
  factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates.fromJson(Object? json) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2>(json, (value) => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2> postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2.isPresent) postInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesDefaultTaxRates(${toJson()})';
}
