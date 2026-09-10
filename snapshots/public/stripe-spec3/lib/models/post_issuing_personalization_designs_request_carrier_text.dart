// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_personalization_designs_request_carrier_text_footer_body.dart';import 'post_issuing_personalization_designs_request_carrier_text_footer_title.dart';import 'post_issuing_personalization_designs_request_carrier_text_header_body.dart';import 'post_issuing_personalization_designs_request_carrier_text_header_title.dart';/// Hash containing carrier text, for use with physical bundles that support carrier text.
@immutable final class PostIssuingPersonalizationDesignsRequestCarrierText {const PostIssuingPersonalizationDesignsRequestCarrierText({this.footerBody, this.footerTitle, this.headerBody, this.headerTitle, });

factory PostIssuingPersonalizationDesignsRequestCarrierText.fromJson(Map<String, dynamic> json) { return PostIssuingPersonalizationDesignsRequestCarrierText(
  footerBody: json['footer_body'] != null ? PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody.fromJson(json['footer_body']) : null,
  footerTitle: json['footer_title'] != null ? PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle.fromJson(json['footer_title']) : null,
  headerBody: json['header_body'] != null ? PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody.fromJson(json['header_body']) : null,
  headerTitle: json['header_title'] != null ? PostIssuingPersonalizationDesignsRequestCarrierTextHeaderTitle.fromJson(json['header_title']) : null,
); }

final PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody? footerBody;

final PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle? footerTitle;

final PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody? headerBody;

final PostIssuingPersonalizationDesignsRequestCarrierTextHeaderTitle? headerTitle;

Map<String, dynamic> toJson() { return {
  if (footerBody != null) 'footer_body': footerBody?.toJson(),
  if (footerTitle != null) 'footer_title': footerTitle?.toJson(),
  if (headerBody != null) 'header_body': headerBody?.toJson(),
  if (headerTitle != null) 'header_title': headerTitle?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'footer_body', 'footer_title', 'header_body', 'header_title'}.contains(key)); } 
PostIssuingPersonalizationDesignsRequestCarrierText copyWith({PostIssuingPersonalizationDesignsRequestCarrierTextFooterBody? Function()? footerBody, PostIssuingPersonalizationDesignsRequestCarrierTextFooterTitle? Function()? footerTitle, PostIssuingPersonalizationDesignsRequestCarrierTextHeaderBody? Function()? headerBody, PostIssuingPersonalizationDesignsRequestCarrierTextHeaderTitle? Function()? headerTitle, }) { return PostIssuingPersonalizationDesignsRequestCarrierText(
  footerBody: footerBody != null ? footerBody() : this.footerBody,
  footerTitle: footerTitle != null ? footerTitle() : this.footerTitle,
  headerBody: headerBody != null ? headerBody() : this.headerBody,
  headerTitle: headerTitle != null ? headerTitle() : this.headerTitle,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingPersonalizationDesignsRequestCarrierText &&
          footerBody == other.footerBody &&
          footerTitle == other.footerTitle &&
          headerBody == other.headerBody &&
          headerTitle == other.headerTitle; } 
@override int get hashCode { return Object.hash(footerBody, footerTitle, headerBody, headerTitle); } 
@override String toString() { return 'PostIssuingPersonalizationDesignsRequestCarrierText(footerBody: $footerBody, footerTitle: $footerTitle, headerBody: $headerBody, headerTitle: $headerTitle)'; } 
 }
