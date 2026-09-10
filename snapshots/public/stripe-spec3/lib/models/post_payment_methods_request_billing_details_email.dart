// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodsRequestBillingDetailsEmailVariant2 {const PostPaymentMethodsRequestBillingDetailsEmailVariant2._(this.value);

factory PostPaymentMethodsRequestBillingDetailsEmailVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsRequestBillingDetailsEmailVariant2._(json),
};}

static const PostPaymentMethodsRequestBillingDetailsEmailVariant2 $empty = PostPaymentMethodsRequestBillingDetailsEmailVariant2._('');

static const List<PostPaymentMethodsRequestBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentMethodsRequestBillingDetailsEmailVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentMethodsRequestBillingDetailsEmailVariant2($value)';}
}

@immutable
final class PostPaymentMethodsRequestBillingDetailsEmail {
  const PostPaymentMethodsRequestBillingDetailsEmail({this.string = const Omittable.absent(),
this.postPaymentMethodsRequestBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsRequestBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postPaymentMethodsRequestBillingDetailsEmailVariant2,});
  factory PostPaymentMethodsRequestBillingDetailsEmail.fromJson(Object? json) => PostPaymentMethodsRequestBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentMethodsRequestBillingDetailsEmailVariant2: parseAnyOfVariant<PostPaymentMethodsRequestBillingDetailsEmailVariant2>(json, (value) => PostPaymentMethodsRequestBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentMethodsRequestBillingDetailsEmailVariant2> postPaymentMethodsRequestBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentMethodsRequestBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentMethodsRequestBillingDetailsEmailVariant2.isPresent) postPaymentMethodsRequestBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsRequestBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsRequestBillingDetailsEmail(${toJson()})';
}
