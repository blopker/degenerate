// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 {const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._(json),
};}

static const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone {
  const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone({this.string = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2> postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhoneVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsPhone(${toJson()})';
}
