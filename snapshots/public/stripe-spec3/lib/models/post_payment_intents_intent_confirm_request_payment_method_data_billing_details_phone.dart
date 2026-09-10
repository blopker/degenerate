// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
