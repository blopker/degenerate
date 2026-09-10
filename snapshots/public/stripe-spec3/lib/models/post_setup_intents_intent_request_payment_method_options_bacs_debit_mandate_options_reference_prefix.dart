// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2._(json),
};}

static const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2($value)';}
}

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsBacsDebitMandateOptionsReferencePrefix(${toJson()})';
}
