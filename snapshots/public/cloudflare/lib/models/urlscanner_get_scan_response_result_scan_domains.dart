// GENERATED CODE - DO NOT MODIFY BY HAND

import 'urlscanner_get_scan_response_result_scan_domains_example_com.dart';final class UrlscannerGetScanResponseResultScanDomains {const UrlscannerGetScanResponseResultScanDomains({this.exampleCom});

factory UrlscannerGetScanResponseResultScanDomains.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanDomains(
  exampleCom: json['example.com'] != null ? UrlscannerGetScanResponseResultScanDomainsExampleCom.fromJson(json['example.com'] as Map<String, dynamic>) : null,
); }

final UrlscannerGetScanResponseResultScanDomainsExampleCom? exampleCom;

Map<String, dynamic> toJson() { return {
  if (exampleCom != null) 'example.com': exampleCom?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'example.com'}.contains(key)); } 
UrlscannerGetScanResponseResultScanDomains copyWith({UrlscannerGetScanResponseResultScanDomainsExampleCom Function()? exampleCom}) { return UrlscannerGetScanResponseResultScanDomains(
  exampleCom: exampleCom != null ? exampleCom() : this.exampleCom,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanDomains &&
          exampleCom == other.exampleCom; } 
@override int get hashCode { return exampleCom.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanDomains(exampleCom: $exampleCom)'; } 
 }
