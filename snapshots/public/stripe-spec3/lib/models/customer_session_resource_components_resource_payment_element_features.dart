// GENERATED CODE - DO NOT MODIFY BY HAND

import 'customer_session_resource_components_resource_payment_element_resource_features.dart';/// This hash defines whether the Payment Element supports certain features.
final class CustomerSessionResourceComponentsResourcePaymentElementFeatures {const CustomerSessionResourceComponentsResourcePaymentElementFeatures({this.customerSessionResourceComponentsResourcePaymentElementResourceFeatures});

factory CustomerSessionResourceComponentsResourcePaymentElementFeatures.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourcePaymentElementFeatures(
  customerSessionResourceComponentsResourcePaymentElementResourceFeatures: CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures.canParse(json) ? CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures.fromJson(json) : null,
); }

final CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures? customerSessionResourceComponentsResourcePaymentElementResourceFeatures;

/// At least one variant must be present.
bool get isValid { return customerSessionResourceComponentsResourcePaymentElementResourceFeatures != null; } 
Map<String, dynamic> toJson() { return {
  ...?customerSessionResourceComponentsResourcePaymentElementResourceFeatures?.toJson(),
}; } 
 }
