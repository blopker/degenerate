// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName {
  const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2> postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
