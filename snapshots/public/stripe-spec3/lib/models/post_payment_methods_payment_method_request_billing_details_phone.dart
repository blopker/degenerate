// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2 {const PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2._(json),
};}

static const PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2 $empty = PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2._('');

static const List<PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone {
  const PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone({this.string = const Omittable.absent(),
this.postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2,});
  factory PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone.fromJson(Object? json) => PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2: parseAnyOfVariant<PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2>(json, (value) => PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2> postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2.isPresent) postPaymentMethodsPaymentMethodRequestBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsPaymentMethodRequestBillingDetailsPhone(${toJson()})';
}
