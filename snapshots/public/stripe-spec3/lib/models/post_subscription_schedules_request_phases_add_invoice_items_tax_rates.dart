// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2 {const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2._(this.value);

factory PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2._(json),
};}

static const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2 $empty = PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2._('');

static const List<PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2($value)';}
}

@immutable
final class PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates {
  const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2,});
  factory PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates.fromJson(Object? json) => PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2>(json, (value) => PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2> postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2.isPresent) postSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionSchedulesRequestPhasesAddInvoiceItemsTaxRates(${toJson()})';
}
