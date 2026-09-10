// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(json),
};}

static const PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl({this.string = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl(${toJson()})';
}
