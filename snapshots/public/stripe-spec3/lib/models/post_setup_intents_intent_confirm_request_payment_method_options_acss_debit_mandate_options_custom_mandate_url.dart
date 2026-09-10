// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(json),
};}

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl({this.string = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl(${toJson()})';
}
