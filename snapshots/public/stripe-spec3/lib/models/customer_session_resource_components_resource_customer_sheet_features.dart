// GENERATED CODE - DO NOT MODIFY BY HAND

import 'customer_session_resource_components_resource_customer_sheet_resource_features.dart';/// This hash defines whether the customer sheet supports certain features.
final class CustomerSessionResourceComponentsResourceCustomerSheetFeatures {const CustomerSessionResourceComponentsResourceCustomerSheetFeatures({this.customerSessionResourceComponentsResourceCustomerSheetResourceFeatures});

factory CustomerSessionResourceComponentsResourceCustomerSheetFeatures.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourceCustomerSheetFeatures(
  customerSessionResourceComponentsResourceCustomerSheetResourceFeatures: CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures.canParse(json) ? CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures.fromJson(json) : null,
); }

final CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures? customerSessionResourceComponentsResourceCustomerSheetResourceFeatures;

/// At least one variant must be present.
bool get isValid { return customerSessionResourceComponentsResourceCustomerSheetResourceFeatures != null; } 
Map<String, dynamic> toJson() { return {
  ...?customerSessionResourceComponentsResourceCustomerSheetResourceFeatures?.toJson(),
}; } 
 }
