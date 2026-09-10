// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone {
  const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2> postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
