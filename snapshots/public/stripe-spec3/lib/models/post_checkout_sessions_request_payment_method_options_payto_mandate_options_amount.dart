// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(json),
};}

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount {
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount({this.$int = const Omittable.absent(),
this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount._({required this.rawValue, required this.$int,
required this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2,});
  factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount.fromJson(Object? json) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2>(json, (value) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.isPresent) postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount(${toJson()})';
}
