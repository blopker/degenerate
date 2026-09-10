// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(json),
};}

static const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2($value)';}
}

@immutable
final class PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix {
  const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2,});
  factory PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix.fromJson(Object? json) => PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2>(json, (value) => PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.isPresent) postCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix(${toJson()})';
}
