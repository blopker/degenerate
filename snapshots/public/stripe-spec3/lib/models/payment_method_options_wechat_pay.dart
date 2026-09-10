// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The client type that the end customer will pay from
@immutable final class PaymentMethodOptionsWechatPayClient {const PaymentMethodOptionsWechatPayClient._(this.value);

factory PaymentMethodOptionsWechatPayClient.fromJson(String json) { return switch (json) {
  'android' => android,
  'ios' => ios,
  'web' => web,
  _ => PaymentMethodOptionsWechatPayClient._(json),
}; }

static const PaymentMethodOptionsWechatPayClient android = PaymentMethodOptionsWechatPayClient._('android');

static const PaymentMethodOptionsWechatPayClient ios = PaymentMethodOptionsWechatPayClient._('ios');

static const PaymentMethodOptionsWechatPayClient web = PaymentMethodOptionsWechatPayClient._('web');

static const List<PaymentMethodOptionsWechatPayClient> values = [android, ios, web];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsWechatPayClient && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsWechatPayClient($value)'; } 
 }
/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
@immutable final class PaymentMethodOptionsWechatPaySetupFutureUsage {const PaymentMethodOptionsWechatPaySetupFutureUsage._(this.value);

factory PaymentMethodOptionsWechatPaySetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsWechatPaySetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsWechatPaySetupFutureUsage none = PaymentMethodOptionsWechatPaySetupFutureUsage._('none');

static const List<PaymentMethodOptionsWechatPaySetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsWechatPaySetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsWechatPaySetupFutureUsage($value)'; } 
 }
/// 
@immutable final class PaymentMethodOptionsWechatPay {const PaymentMethodOptionsWechatPay({this.appId = const Omittable.absent(), this.client = const Omittable.absent(), this.setupFutureUsage, });

factory PaymentMethodOptionsWechatPay.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsWechatPay(
  appId: json.containsKey('app_id') ? Omittable(json['app_id'] as String?) : const Omittable.absent(),
  client: json.containsKey('client') ? Omittable(json['client'] != null ? PaymentMethodOptionsWechatPayClient.fromJson(json['client'] as String) : null) : const Omittable.absent(),
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsWechatPaySetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

/// The app ID registered with WeChat Pay. Only required when client is ios or android.
final Omittable<String?> appId;

/// The client type that the end customer will pay from
final Omittable<PaymentMethodOptionsWechatPayClient?> client;

/// Indicates that you intend to make future payments with this PaymentIntent's payment method.
/// 
/// If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
/// 
/// If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
/// 
/// When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
final PaymentMethodOptionsWechatPaySetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (appId.isPresent) 'app_id': appId.value,
  if (client.isPresent) 'client': client.value?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'app_id', 'client', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsWechatPay copyWith({Omittable<String?>? appId, Omittable<PaymentMethodOptionsWechatPayClient?>? client, PaymentMethodOptionsWechatPaySetupFutureUsage? Function()? setupFutureUsage, }) { return PaymentMethodOptionsWechatPay(
  appId: appId ?? this.appId,
  client: client ?? this.client,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsWechatPay &&
          appId == other.appId &&
          client == other.client &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(appId, client, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsWechatPay(appId: $appId, client: $client, setupFutureUsage: $setupFutureUsage)'; } 
 }
