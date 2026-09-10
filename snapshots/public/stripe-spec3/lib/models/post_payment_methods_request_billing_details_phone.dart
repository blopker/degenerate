// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodsRequestBillingDetailsPhoneVariant2 {const PostPaymentMethodsRequestBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentMethodsRequestBillingDetailsPhoneVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsRequestBillingDetailsPhoneVariant2._(json),
}; }

static const PostPaymentMethodsRequestBillingDetailsPhoneVariant2 $empty = PostPaymentMethodsRequestBillingDetailsPhoneVariant2._('');

static const List<PostPaymentMethodsRequestBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsRequestBillingDetailsPhoneVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestBillingDetailsPhoneVariant2($value)'; } 
 }

@immutable
final class PostPaymentMethodsRequestBillingDetailsPhone {
  const PostPaymentMethodsRequestBillingDetailsPhone({this.string = const Omittable.absent(),
this.postPaymentMethodsRequestBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsRequestBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postPaymentMethodsRequestBillingDetailsPhoneVariant2,});
  factory PostPaymentMethodsRequestBillingDetailsPhone.fromJson(Object? json) => PostPaymentMethodsRequestBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentMethodsRequestBillingDetailsPhoneVariant2: parseAnyOfVariant<PostPaymentMethodsRequestBillingDetailsPhoneVariant2>(json, (value) => PostPaymentMethodsRequestBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentMethodsRequestBillingDetailsPhoneVariant2> postPaymentMethodsRequestBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentMethodsRequestBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentMethodsRequestBillingDetailsPhoneVariant2.isPresent) postPaymentMethodsRequestBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsRequestBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsRequestBillingDetailsPhone(${toJson()})';
}
