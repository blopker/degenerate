// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave {const PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave._(this.value);

factory PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave.fromJson(String json) { return switch (json) {
  'always' => always,
  'never' => never,
  'offer' => offer,
  _ => PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave._(json),
}; }

static const PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave always = PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave._('always');

static const PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave never = PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave._('never');

static const PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave offer = PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave._('offer');

static const List<PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave> values = [always, never, offer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave($value)'; } 
 }
@immutable final class PostAccountsRequestSettingsInvoices {const PostAccountsRequestSettingsInvoices({this.hostedPaymentMethodSave});

factory PostAccountsRequestSettingsInvoices.fromJson(Map<String, dynamic> json) { return PostAccountsRequestSettingsInvoices(
  hostedPaymentMethodSave: json['hosted_payment_method_save'] != null ? PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave.fromJson(json['hosted_payment_method_save'] as String) : null,
); }

final PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave? hostedPaymentMethodSave;

Map<String, dynamic> toJson() { return {
  if (hostedPaymentMethodSave != null) 'hosted_payment_method_save': hostedPaymentMethodSave?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hosted_payment_method_save'}.contains(key)); } 
PostAccountsRequestSettingsInvoices copyWith({PostAccountsRequestSettingsInvoicesHostedPaymentMethodSave Function()? hostedPaymentMethodSave}) { return PostAccountsRequestSettingsInvoices(
  hostedPaymentMethodSave: hostedPaymentMethodSave != null ? hostedPaymentMethodSave() : this.hostedPaymentMethodSave,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestSettingsInvoices &&
          hostedPaymentMethodSave == other.hostedPaymentMethodSave; } 
@override int get hashCode { return hostedPaymentMethodSave.hashCode; } 
@override String toString() { return 'PostAccountsRequestSettingsInvoices(hostedPaymentMethodSave: $hostedPaymentMethodSave)'; } 
 }
