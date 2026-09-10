// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 {const PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix {
  const PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2,});
  factory PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix.fromJson(Object? json) => PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2>(json, (value) => PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent) postSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsIntentRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix(${toJson()})';
}
