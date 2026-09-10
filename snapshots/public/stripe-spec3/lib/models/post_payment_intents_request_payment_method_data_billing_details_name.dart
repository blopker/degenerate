// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName {
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName({this.string = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName._({required this.rawValue, required this.string,
required this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2> postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.isPresent) postPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName(${toJson()})';
}
