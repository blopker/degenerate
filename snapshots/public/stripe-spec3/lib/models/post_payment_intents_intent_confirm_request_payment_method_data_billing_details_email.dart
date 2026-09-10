// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail({this.string = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail(${toJson()})';
}
