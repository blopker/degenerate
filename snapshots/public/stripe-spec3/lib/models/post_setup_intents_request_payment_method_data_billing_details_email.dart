// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
};}

static const PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2($value)';}
}

@immutable
final class PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail {
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2,});
  factory PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2> postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.isPresent) postSetupIntentsRequestPaymentMethodDataBillingDetailsEmailVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodDataBillingDetailsEmail(${toJson()})';
}
