// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param44.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(json),
};}

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2($value)';}
}

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount {
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount({this.invoicePaymentMethodOptionsParam44 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.invoicePaymentMethodOptionsParam44,
required this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam44: parseAnyOfVariant<InvoicePaymentMethodOptionsParam44>(json, (value) => InvoicePaymentMethodOptionsParam44.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam44> invoicePaymentMethodOptionsParam44;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam44.isPresent || postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam44.isPresent) invoicePaymentMethodOptionsParam44.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsUsBankAccount(${toJson()})';
}
