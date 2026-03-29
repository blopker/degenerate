// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions {const PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions({this.imageUrl, this.productUrl, this.reference, this.subscriptionReference, });

factory PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions(
  imageUrl: json['image_url'] as String?,
  productUrl: json['product_url'] as String?,
  reference: json['reference'] as String?,
  subscriptionReference: json['subscription_reference'] as String?,
); }

final String? imageUrl;

final String? productUrl;

final String? reference;

final String? subscriptionReference;

Map<String, dynamic> toJson() { return {
  'image_url': ?imageUrl,
  'product_url': ?productUrl,
  'reference': ?reference,
  'subscription_reference': ?subscriptionReference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'image_url', 'product_url', 'reference', 'subscription_reference'}.contains(key)); } 
PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions copyWith({String? Function()? imageUrl, String? Function()? productUrl, String? Function()? reference, String? Function()? subscriptionReference, }) { return PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions(
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  productUrl: productUrl != null ? productUrl() : this.productUrl,
  reference: reference != null ? reference() : this.reference,
  subscriptionReference: subscriptionReference != null ? subscriptionReference() : this.subscriptionReference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions &&
          imageUrl == other.imageUrl &&
          productUrl == other.productUrl &&
          reference == other.reference &&
          subscriptionReference == other.subscriptionReference; } 
@override int get hashCode { return Object.hash(imageUrl, productUrl, reference, subscriptionReference); } 
@override String toString() { return 'PaymentFlowsPrivatePaymentMethodsKlarnaPaymentIntentAmountDetailsLineItemPaymentMethodOptions(imageUrl: $imageUrl, productUrl: $productUrl, reference: $reference, subscriptionReference: $subscriptionReference)'; } 
 }
