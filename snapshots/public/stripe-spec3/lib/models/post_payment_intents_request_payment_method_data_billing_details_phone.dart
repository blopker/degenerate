// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone {
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2> postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postPaymentIntentsRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
