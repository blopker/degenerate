// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail({this.string = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataBillingDetailsEmail(${toJson()})';
}
