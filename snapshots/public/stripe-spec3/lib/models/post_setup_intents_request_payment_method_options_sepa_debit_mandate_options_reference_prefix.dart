// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 {const PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(json),
}; }

static const PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 $empty = PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2($value)'; } 
 }

@immutable
final class PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix {
  const PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2,});
  factory PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix.fromJson(Object? json) => PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2>(json, (value) => PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent) postSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSetupIntentsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix(${toJson()})';
}
