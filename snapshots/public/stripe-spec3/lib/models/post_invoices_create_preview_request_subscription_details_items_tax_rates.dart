// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2 {const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2._(json),
};}

static const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2 $empty = PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2._('');

static const List<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates {
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates({this.listString = const Omittable.absent(),
this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates._({required this.rawValue, required this.listString,
required this.postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2,});
  factory PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates.fromJson(Object? json) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2: parseAnyOfVariant<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2>(json, (value) => PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2> postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2.isPresent) postInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesCreatePreviewRequestSubscriptionDetailsItemsTaxRates(${toJson()})';
}
