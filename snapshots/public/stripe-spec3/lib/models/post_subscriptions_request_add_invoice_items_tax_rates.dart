// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 {const PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._(json),
};}

static const PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 $empty = PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostSubscriptionsRequestAddInvoiceItemsTaxRates {
  const PostSubscriptionsRequestAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2,});
  factory PostSubscriptionsRequestAddInvoiceItemsTaxRates.fromJson(Object? json) => PostSubscriptionsRequestAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2> postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.isPresent) postSubscriptionsRequestAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestAddInvoiceItemsTaxRates(${toJson()})';
}
