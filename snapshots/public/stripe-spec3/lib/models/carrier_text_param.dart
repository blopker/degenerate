// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'carrier_text_param_footer_body.dart';import 'carrier_text_param_footer_title.dart';import 'carrier_text_param_header_body.dart';import 'carrier_text_param_header_title.dart';final class CarrierTextParam {const CarrierTextParam({this.footerBody, this.footerTitle, this.headerBody, this.headerTitle, });

factory CarrierTextParam.fromJson(Map<String, dynamic> json) { return CarrierTextParam(
  footerBody: json['footer_body'] != null ? OneOf2.parse(json['footer_body'], fromA: (v) => v as String, fromB: (v) => CarrierTextParamFooterBodyVariant2.fromJson(v as String),) : null,
  footerTitle: json['footer_title'] != null ? OneOf2.parse(json['footer_title'], fromA: (v) => v as String, fromB: (v) => CarrierTextParamFooterTitleVariant2.fromJson(v as String),) : null,
  headerBody: json['header_body'] != null ? OneOf2.parse(json['header_body'], fromA: (v) => v as String, fromB: (v) => CarrierTextParamHeaderBodyVariant2.fromJson(v as String),) : null,
  headerTitle: json['header_title'] != null ? OneOf2.parse(json['header_title'], fromA: (v) => v as String, fromB: (v) => CarrierTextParamHeaderTitleVariant2.fromJson(v as String),) : null,
); }

final CarrierTextParamFooterBody? footerBody;

final CarrierTextParamFooterTitle? footerTitle;

final CarrierTextParamHeaderBody? headerBody;

final CarrierTextParamHeaderTitle? headerTitle;

Map<String, dynamic> toJson() { return {
  if (footerBody != null) 'footer_body': footerBody?.toJson(),
  if (footerTitle != null) 'footer_title': footerTitle?.toJson(),
  if (headerBody != null) 'header_body': headerBody?.toJson(),
  if (headerTitle != null) 'header_title': headerTitle?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'footer_body', 'footer_title', 'header_body', 'header_title'}.contains(key)); } 
CarrierTextParam copyWith({CarrierTextParamFooterBody Function()? footerBody, CarrierTextParamFooterTitle Function()? footerTitle, CarrierTextParamHeaderBody Function()? headerBody, CarrierTextParamHeaderTitle Function()? headerTitle, }) { return CarrierTextParam(
  footerBody: footerBody != null ? footerBody() : this.footerBody,
  footerTitle: footerTitle != null ? footerTitle() : this.footerTitle,
  headerBody: headerBody != null ? headerBody() : this.headerBody,
  headerTitle: headerTitle != null ? headerTitle() : this.headerTitle,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CarrierTextParam &&
          footerBody == other.footerBody &&
          footerTitle == other.footerTitle &&
          headerBody == other.headerBody &&
          headerTitle == other.headerTitle; } 
@override int get hashCode { return Object.hash(footerBody, footerTitle, headerBody, headerTitle); } 
@override String toString() { return 'CarrierTextParam(footerBody: $footerBody, footerTitle: $footerTitle, headerBody: $headerBody, headerTitle: $headerTitle)'; } 
 }
