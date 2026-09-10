// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 {const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 $empty = PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix {
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2,});
  factory PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix.fromJson(Object? json) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2>(json, (value) => PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent) postSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix(${toJson()})';
}
