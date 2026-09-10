// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsRequestDefaultTaxRatesVariant2 {const PostSubscriptionsRequestDefaultTaxRatesVariant2._(this.value);

factory PostSubscriptionsRequestDefaultTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsRequestDefaultTaxRatesVariant2._(json),
};}

static const PostSubscriptionsRequestDefaultTaxRatesVariant2 $empty = PostSubscriptionsRequestDefaultTaxRatesVariant2._('');

static const List<PostSubscriptionsRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsRequestDefaultTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsRequestDefaultTaxRatesVariant2($value)';}
}
/// The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
@immutable
final class PostSubscriptionsRequestDefaultTaxRates {
  const PostSubscriptionsRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionsRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionsRequestDefaultTaxRatesVariant2,});
  factory PostSubscriptionsRequestDefaultTaxRates.fromJson(Object? json) => PostSubscriptionsRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionsRequestDefaultTaxRatesVariant2>(json, (value) => PostSubscriptionsRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsRequestDefaultTaxRatesVariant2> postSubscriptionsRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsRequestDefaultTaxRatesVariant2.isPresent) postSubscriptionsRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsRequestDefaultTaxRates(${toJson()})';
}
