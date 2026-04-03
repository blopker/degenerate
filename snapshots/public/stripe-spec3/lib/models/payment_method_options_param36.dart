// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam36Client {const PaymentMethodOptionsParam36Client._(this.value);

factory PaymentMethodOptionsParam36Client.fromJson(String json) { return switch (json) {
  'android' => android,
  'ios' => ios,
  'web' => web,
  _ => PaymentMethodOptionsParam36Client._(json),
}; }

static const PaymentMethodOptionsParam36Client android = PaymentMethodOptionsParam36Client._('android');

static const PaymentMethodOptionsParam36Client ios = PaymentMethodOptionsParam36Client._('ios');

static const PaymentMethodOptionsParam36Client web = PaymentMethodOptionsParam36Client._('web');

static const List<PaymentMethodOptionsParam36Client> values = [android, ios, web];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam36Client && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam36Client($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam36SetupFutureUsage {const PaymentMethodOptionsParam36SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam36SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam36SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam36SetupFutureUsage none = PaymentMethodOptionsParam36SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam36SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam36SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam36SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam36 {const PaymentMethodOptionsParam36({this.appId, this.client, this.setupFutureUsage, });

factory PaymentMethodOptionsParam36.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam36(
  appId: json['app_id'] as String?,
  client: json['client'] != null ? PaymentMethodOptionsParam36Client.fromJson(json['client'] as String) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam36SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final String? appId;

final PaymentMethodOptionsParam36Client? client;

final PaymentMethodOptionsParam36SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'app_id': ?appId,
  if (client != null) 'client': client?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'app_id', 'client', 'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam36 copyWith({String Function()? appId, PaymentMethodOptionsParam36Client Function()? client, PaymentMethodOptionsParam36SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentMethodOptionsParam36(
  appId: appId != null ? appId() : this.appId,
  client: client != null ? client() : this.client,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam36 &&
          appId == other.appId &&
          client == other.client &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(appId, client, setupFutureUsage); } 
@override String toString() { return 'PaymentMethodOptionsParam36(appId: $appId, client: $client, setupFutureUsage: $setupFutureUsage)'; } 
 }
