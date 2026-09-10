// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(json),
};}

static const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2($value)';}
}

@immutable
final class PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl {
  const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2,});
  factory PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.isPresent) postSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl(${toJson()})';
}
