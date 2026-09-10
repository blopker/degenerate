// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_invoices_settings_default_account_tax_ids.dart';import 'tax_id.dart';/// Whether to save the payment method after a payment is completed for a one-time invoice or a subscription invoice when the customer already has a default payment method on the hosted invoice page.
@immutable final class AccountInvoicesSettingsHostedPaymentMethodSave {const AccountInvoicesSettingsHostedPaymentMethodSave._(this.value);

factory AccountInvoicesSettingsHostedPaymentMethodSave.fromJson(String json) { return switch (json) {
  'always' => always,
  'never' => never,
  'offer' => offer,
  _ => AccountInvoicesSettingsHostedPaymentMethodSave._(json),
}; }

static const AccountInvoicesSettingsHostedPaymentMethodSave always = AccountInvoicesSettingsHostedPaymentMethodSave._('always');

static const AccountInvoicesSettingsHostedPaymentMethodSave never = AccountInvoicesSettingsHostedPaymentMethodSave._('never');

static const AccountInvoicesSettingsHostedPaymentMethodSave offer = AccountInvoicesSettingsHostedPaymentMethodSave._('offer');

static const List<AccountInvoicesSettingsHostedPaymentMethodSave> values = [always, never, offer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountInvoicesSettingsHostedPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountInvoicesSettingsHostedPaymentMethodSave($value)'; } 
 }
/// 
@immutable final class AccountInvoicesSettings {const AccountInvoicesSettings({this.defaultAccountTaxIds = const Omittable.absent(), this.hostedPaymentMethodSave = const Omittable.absent(), });

factory AccountInvoicesSettings.fromJson(Map<String, dynamic> json) { return AccountInvoicesSettings(
  defaultAccountTaxIds: json.containsKey('default_account_tax_ids') ? Omittable((json['default_account_tax_ids'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => TaxId.fromJson(v as Map<String, dynamic>),)).toList()) : const Omittable.absent(),
  hostedPaymentMethodSave: json.containsKey('hosted_payment_method_save') ? Omittable(json['hosted_payment_method_save'] != null ? AccountInvoicesSettingsHostedPaymentMethodSave.fromJson(json['hosted_payment_method_save'] as String) : null) : const Omittable.absent(),
); }

/// The list of default Account Tax IDs to automatically include on invoices. Account Tax IDs get added when an invoice is finalized.
final Omittable<List<AccountInvoicesSettingsDefaultAccountTaxIds>?> defaultAccountTaxIds;

/// Whether to save the payment method after a payment is completed for a one-time invoice or a subscription invoice when the customer already has a default payment method on the hosted invoice page.
final Omittable<AccountInvoicesSettingsHostedPaymentMethodSave?> hostedPaymentMethodSave;

Map<String, dynamic> toJson() { return {
  if (defaultAccountTaxIds.isPresent) 'default_account_tax_ids': defaultAccountTaxIds.value?.map((e) => e.toJson()).toList(),
  if (hostedPaymentMethodSave.isPresent) 'hosted_payment_method_save': hostedPaymentMethodSave.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_account_tax_ids', 'hosted_payment_method_save'}.contains(key)); } 
AccountInvoicesSettings copyWith({Omittable<List<AccountInvoicesSettingsDefaultAccountTaxIds>?>? defaultAccountTaxIds, Omittable<AccountInvoicesSettingsHostedPaymentMethodSave?>? hostedPaymentMethodSave, }) { return AccountInvoicesSettings(
  defaultAccountTaxIds: defaultAccountTaxIds ?? this.defaultAccountTaxIds,
  hostedPaymentMethodSave: hostedPaymentMethodSave ?? this.hostedPaymentMethodSave,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountInvoicesSettings &&
          defaultAccountTaxIds.isPresent == other.defaultAccountTaxIds.isPresent &&
          listEquals(defaultAccountTaxIds.value, other.defaultAccountTaxIds.value) &&
          hostedPaymentMethodSave == other.hostedPaymentMethodSave; } 
@override int get hashCode { return Object.hash(Object.hashAll(defaultAccountTaxIds.value ?? const []), hostedPaymentMethodSave); } 
@override String toString() { return 'AccountInvoicesSettings(defaultAccountTaxIds: $defaultAccountTaxIds, hostedPaymentMethodSave: $hostedPaymentMethodSave)'; } 
 }
