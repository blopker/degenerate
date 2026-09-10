// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingPersonalizationDesignCarrierText {const IssuingPersonalizationDesignCarrierText({this.footerBody = const Omittable.absent(), this.footerTitle = const Omittable.absent(), this.headerBody = const Omittable.absent(), this.headerTitle = const Omittable.absent(), });

factory IssuingPersonalizationDesignCarrierText.fromJson(Map<String, dynamic> json) { return IssuingPersonalizationDesignCarrierText(
  footerBody: json.containsKey('footer_body') ? Omittable(json['footer_body'] as String?) : const Omittable.absent(),
  footerTitle: json.containsKey('footer_title') ? Omittable(json['footer_title'] as String?) : const Omittable.absent(),
  headerBody: json.containsKey('header_body') ? Omittable(json['header_body'] as String?) : const Omittable.absent(),
  headerTitle: json.containsKey('header_title') ? Omittable(json['header_title'] as String?) : const Omittable.absent(),
); }

/// The footer body text of the carrier letter.
final Omittable<String?> footerBody;

/// The footer title text of the carrier letter.
final Omittable<String?> footerTitle;

/// The header body text of the carrier letter.
final Omittable<String?> headerBody;

/// The header title text of the carrier letter.
final Omittable<String?> headerTitle;

Map<String, dynamic> toJson() { return {
  if (footerBody.isPresent) 'footer_body': footerBody.value,
  if (footerTitle.isPresent) 'footer_title': footerTitle.value,
  if (headerBody.isPresent) 'header_body': headerBody.value,
  if (headerTitle.isPresent) 'header_title': headerTitle.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'footer_body', 'footer_title', 'header_body', 'header_title'}.contains(key)); } 
IssuingPersonalizationDesignCarrierText copyWith({Omittable<String?>? footerBody, Omittable<String?>? footerTitle, Omittable<String?>? headerBody, Omittable<String?>? headerTitle, }) { return IssuingPersonalizationDesignCarrierText(
  footerBody: footerBody ?? this.footerBody,
  footerTitle: footerTitle ?? this.footerTitle,
  headerBody: headerBody ?? this.headerBody,
  headerTitle: headerTitle ?? this.headerTitle,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingPersonalizationDesignCarrierText &&
          footerBody == other.footerBody &&
          footerTitle == other.footerTitle &&
          headerBody == other.headerBody &&
          headerTitle == other.headerTitle; } 
@override int get hashCode { return Object.hash(footerBody, footerTitle, headerBody, headerTitle); } 
@override String toString() { return 'IssuingPersonalizationDesignCarrierText(footerBody: $footerBody, footerTitle: $footerTitle, headerBody: $headerBody, headerTitle: $headerTitle)'; } 
 }
