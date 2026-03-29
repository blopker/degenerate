// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_tax_settings_head_office.dart';/// The place where your business is located.
final class TaxSettingsHeadOffice {const TaxSettingsHeadOffice({this.taxProductResourceTaxSettingsHeadOffice});

factory TaxSettingsHeadOffice.fromJson(Map<String, dynamic> json) { return TaxSettingsHeadOffice(
  taxProductResourceTaxSettingsHeadOffice: TaxProductResourceTaxSettingsHeadOffice.canParse(json) ? TaxProductResourceTaxSettingsHeadOffice.fromJson(json) : null,
); }

final TaxProductResourceTaxSettingsHeadOffice? taxProductResourceTaxSettingsHeadOffice;

/// At least one variant must be present.
bool get isValid { return taxProductResourceTaxSettingsHeadOffice != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxProductResourceTaxSettingsHeadOffice?.toJson(),
}; } 
 }
