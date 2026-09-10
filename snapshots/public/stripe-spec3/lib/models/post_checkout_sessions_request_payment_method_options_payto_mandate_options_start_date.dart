// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2($value)'; } 
 }

@immutable
final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate {
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate({this.string = const Omittable.absent(),
this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate._({required this.rawValue, required this.string,
required this.postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2,});
  factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate.fromJson(Object? json) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2>(json, (value) => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.isPresent) postCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate(${toJson()})';
}
