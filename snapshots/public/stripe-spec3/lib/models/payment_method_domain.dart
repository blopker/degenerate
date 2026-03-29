// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_domain_resource_payment_method_status.dart';/// String representing the object's type. Objects of the same type share the same value.
final class PaymentMethodDomainObject {const PaymentMethodDomainObject._(this.value);

factory PaymentMethodDomainObject.fromJson(String json) { return switch (json) {
  'payment_method_domain' => paymentMethodDomain,
  _ => PaymentMethodDomainObject._(json),
}; }

static const PaymentMethodDomainObject paymentMethodDomain = PaymentMethodDomainObject._('payment_method_domain');

static const List<PaymentMethodDomainObject> values = [paymentMethodDomain];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDomainObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDomainObject($value)'; } 
 }
/// A payment method domain represents a web domain that you have registered with Stripe.
/// Stripe Elements use registered payment method domains to control where certain payment methods are shown.
/// 
/// Related guide: [Payment method domains](https://docs.stripe.com/payments/payment-methods/pmd-registration).
final class PaymentMethodDomain {const PaymentMethodDomain({required this.amazonPay, required this.applePay, required this.created, required this.domainName, required this.enabled, required this.googlePay, required this.id, required this.klarna, required this.link, required this.livemode, required this.object, required this.paypal, });

factory PaymentMethodDomain.fromJson(Map<String, dynamic> json) { return PaymentMethodDomain(
  amazonPay: PaymentMethodDomainResourcePaymentMethodStatus.fromJson(json['amazon_pay'] as Map<String, dynamic>),
  applePay: PaymentMethodDomainResourcePaymentMethodStatus.fromJson(json['apple_pay'] as Map<String, dynamic>),
  created: (json['created'] as num).toInt(),
  domainName: json['domain_name'] as String,
  enabled: json['enabled'] as bool,
  googlePay: PaymentMethodDomainResourcePaymentMethodStatus.fromJson(json['google_pay'] as Map<String, dynamic>),
  id: json['id'] as String,
  klarna: PaymentMethodDomainResourcePaymentMethodStatus.fromJson(json['klarna'] as Map<String, dynamic>),
  link: PaymentMethodDomainResourcePaymentMethodStatus.fromJson(json['link'] as Map<String, dynamic>),
  livemode: json['livemode'] as bool,
  object: PaymentMethodDomainObject.fromJson(json['object'] as String),
  paypal: PaymentMethodDomainResourcePaymentMethodStatus.fromJson(json['paypal'] as Map<String, dynamic>),
); }

final PaymentMethodDomainResourcePaymentMethodStatus amazonPay;

final PaymentMethodDomainResourcePaymentMethodStatus applePay;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The domain name that this payment method domain object represents.
final String domainName;

/// Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
final bool enabled;

final PaymentMethodDomainResourcePaymentMethodStatus googlePay;

/// Unique identifier for the object.
final String id;

final PaymentMethodDomainResourcePaymentMethodStatus klarna;

final PaymentMethodDomainResourcePaymentMethodStatus link;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final PaymentMethodDomainObject object;

final PaymentMethodDomainResourcePaymentMethodStatus paypal;

Map<String, dynamic> toJson() { return {
  'amazon_pay': amazonPay.toJson(),
  'apple_pay': applePay.toJson(),
  'created': created,
  'domain_name': domainName,
  'enabled': enabled,
  'google_pay': googlePay.toJson(),
  'id': id,
  'klarna': klarna.toJson(),
  'link': link.toJson(),
  'livemode': livemode,
  'object': object.toJson(),
  'paypal': paypal.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amazon_pay') &&
      json.containsKey('apple_pay') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('domain_name') && json['domain_name'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('google_pay') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('klarna') &&
      json.containsKey('link') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('paypal'); } 
PaymentMethodDomain copyWith({PaymentMethodDomainResourcePaymentMethodStatus? amazonPay, PaymentMethodDomainResourcePaymentMethodStatus? applePay, int? created, String? domainName, bool? enabled, PaymentMethodDomainResourcePaymentMethodStatus? googlePay, String? id, PaymentMethodDomainResourcePaymentMethodStatus? klarna, PaymentMethodDomainResourcePaymentMethodStatus? link, bool? livemode, PaymentMethodDomainObject? object, PaymentMethodDomainResourcePaymentMethodStatus? paypal, }) { return PaymentMethodDomain(
  amazonPay: amazonPay ?? this.amazonPay,
  applePay: applePay ?? this.applePay,
  created: created ?? this.created,
  domainName: domainName ?? this.domainName,
  enabled: enabled ?? this.enabled,
  googlePay: googlePay ?? this.googlePay,
  id: id ?? this.id,
  klarna: klarna ?? this.klarna,
  link: link ?? this.link,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  paypal: paypal ?? this.paypal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDomain &&
          amazonPay == other.amazonPay &&
          applePay == other.applePay &&
          created == other.created &&
          domainName == other.domainName &&
          enabled == other.enabled &&
          googlePay == other.googlePay &&
          id == other.id &&
          klarna == other.klarna &&
          link == other.link &&
          livemode == other.livemode &&
          object == other.object &&
          paypal == other.paypal; } 
@override int get hashCode { return Object.hash(amazonPay, applePay, created, domainName, enabled, googlePay, id, klarna, link, livemode, object, paypal); } 
@override String toString() { return 'PaymentMethodDomain(amazonPay: $amazonPay, applePay: $applePay, created: $created, domainName: $domainName, enabled: $enabled, googlePay: $googlePay, id: $id, klarna: $klarna, link: $link, livemode: $livemode, object: $object, paypal: $paypal)'; } 
 }
