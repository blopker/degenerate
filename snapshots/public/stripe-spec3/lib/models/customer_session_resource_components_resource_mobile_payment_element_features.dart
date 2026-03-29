// GENERATED CODE - DO NOT MODIFY BY HAND

import 'customer_session_resource_components_resource_mobile_payment_element_resource_features.dart';/// This hash defines whether the mobile payment element supports certain features.
final class CustomerSessionResourceComponentsResourceMobilePaymentElementFeatures {const CustomerSessionResourceComponentsResourceMobilePaymentElementFeatures({this.customerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures});

factory CustomerSessionResourceComponentsResourceMobilePaymentElementFeatures.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourceMobilePaymentElementFeatures(
  customerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures: CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures.canParse(json) ? CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures.fromJson(json) : null,
); }

final CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures? customerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures;

/// At least one variant must be present.
bool get isValid { return customerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures != null; } 
Map<String, dynamic> toJson() { return {
  ...?customerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures?.toJson(),
}; } 
 }
