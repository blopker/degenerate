// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail {
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail({this.string = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2> postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent) postPaymentIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsEmail(${toJson()})';
}
