// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2($value)';}
}
/// The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates {
  const PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2> postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates(${toJson()})';
}
