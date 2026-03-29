// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// Address as it appears in the document.
final class GelatoDocumentReportAddress {const GelatoDocumentReportAddress({this.address});

factory GelatoDocumentReportAddress.fromJson(Map<String, dynamic> json) { return GelatoDocumentReportAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }
