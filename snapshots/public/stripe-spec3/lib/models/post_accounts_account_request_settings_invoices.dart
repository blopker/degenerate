// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_request_settings_invoices_default_account_tax_ids.dart';final class PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave {const PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave._(this.value);

factory PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave.fromJson(String json) { return switch (json) {
  'always' => always,
  'never' => never,
  'offer' => offer,
  _ => PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave._(json),
}; }

static const PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave always = PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave._('always');

static const PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave never = PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave._('never');

static const PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave offer = PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave._('offer');

static const List<PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave> values = [always, never, offer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave($value)'; } 
 }
final class PostAccountsAccountRequestSettingsInvoices {const PostAccountsAccountRequestSettingsInvoices({this.defaultAccountTaxIds, this.hostedPaymentMethodSave, });

factory PostAccountsAccountRequestSettingsInvoices.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestSettingsInvoices(
  defaultAccountTaxIds: json['default_account_tax_ids'] != null ? OneOf2.parse(json['default_account_tax_ids'], fromA: (v) => (v as List<dynamic>).map((e) => e as String).toList(), fromB: (v) => PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIdsVariant2.fromJson(v as String),) : null,
  hostedPaymentMethodSave: json['hosted_payment_method_save'] != null ? PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave.fromJson(json['hosted_payment_method_save'] as String) : null,
); }

final PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds? defaultAccountTaxIds;

final PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave? hostedPaymentMethodSave;

Map<String, dynamic> toJson() { return {
  if (defaultAccountTaxIds != null) 'default_account_tax_ids': defaultAccountTaxIds?.toJson(),
  if (hostedPaymentMethodSave != null) 'hosted_payment_method_save': hostedPaymentMethodSave?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_account_tax_ids', 'hosted_payment_method_save'}.contains(key)); } 
PostAccountsAccountRequestSettingsInvoices copyWith({PostAccountsAccountRequestSettingsInvoicesDefaultAccountTaxIds Function()? defaultAccountTaxIds, PostAccountsAccountRequestSettingsInvoicesHostedPaymentMethodSave Function()? hostedPaymentMethodSave, }) { return PostAccountsAccountRequestSettingsInvoices(
  defaultAccountTaxIds: defaultAccountTaxIds != null ? defaultAccountTaxIds() : this.defaultAccountTaxIds,
  hostedPaymentMethodSave: hostedPaymentMethodSave != null ? hostedPaymentMethodSave() : this.hostedPaymentMethodSave,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestSettingsInvoices &&
          defaultAccountTaxIds == other.defaultAccountTaxIds &&
          hostedPaymentMethodSave == other.hostedPaymentMethodSave; } 
@override int get hashCode { return Object.hash(defaultAccountTaxIds, hostedPaymentMethodSave); } 
@override String toString() { return 'PostAccountsAccountRequestSettingsInvoices(defaultAccountTaxIds: $defaultAccountTaxIds, hostedPaymentMethodSave: $hostedPaymentMethodSave)'; } 
 }
