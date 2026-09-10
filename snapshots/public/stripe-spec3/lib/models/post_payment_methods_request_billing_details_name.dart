// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodsRequestBillingDetailsNameVariant2 {const PostPaymentMethodsRequestBillingDetailsNameVariant2._(this.value);

factory PostPaymentMethodsRequestBillingDetailsNameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsRequestBillingDetailsNameVariant2._(json),
};}

static const PostPaymentMethodsRequestBillingDetailsNameVariant2 $empty = PostPaymentMethodsRequestBillingDetailsNameVariant2._('');

static const List<PostPaymentMethodsRequestBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentMethodsRequestBillingDetailsNameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentMethodsRequestBillingDetailsNameVariant2($value)';}
}

@immutable
final class PostPaymentMethodsRequestBillingDetailsName {
  const PostPaymentMethodsRequestBillingDetailsName({this.string = const Omittable.absent(),
this.postPaymentMethodsRequestBillingDetailsNameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsRequestBillingDetailsName._({required this.rawValue, required this.string,
required this.postPaymentMethodsRequestBillingDetailsNameVariant2,});
  factory PostPaymentMethodsRequestBillingDetailsName.fromJson(Object? json) => PostPaymentMethodsRequestBillingDetailsName._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentMethodsRequestBillingDetailsNameVariant2: parseAnyOfVariant<PostPaymentMethodsRequestBillingDetailsNameVariant2>(json, (value) => PostPaymentMethodsRequestBillingDetailsNameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentMethodsRequestBillingDetailsNameVariant2> postPaymentMethodsRequestBillingDetailsNameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentMethodsRequestBillingDetailsNameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentMethodsRequestBillingDetailsNameVariant2.isPresent) postPaymentMethodsRequestBillingDetailsNameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsRequestBillingDetailsName && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsRequestBillingDetailsName(${toJson()})';
}
