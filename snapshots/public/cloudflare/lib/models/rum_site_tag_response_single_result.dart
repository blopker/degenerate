// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_site_tag.dart';@immutable final class RumSiteTagResponseSingleResult {const RumSiteTagResponseSingleResult({this.siteTag});

factory RumSiteTagResponseSingleResult.fromJson(Map<String, dynamic> json) { return RumSiteTagResponseSingleResult(
  siteTag: json['site_tag'] != null ? RumSiteTag.fromJson(json['site_tag'] as String) : null,
); }

final RumSiteTag? siteTag;

Map<String, dynamic> toJson() { return {
  if (siteTag != null) 'site_tag': siteTag?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'site_tag'}.contains(key)); } 
RumSiteTagResponseSingleResult copyWith({RumSiteTag Function()? siteTag}) { return RumSiteTagResponseSingleResult(
  siteTag: siteTag != null ? siteTag() : this.siteTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumSiteTagResponseSingleResult &&
          siteTag == other.siteTag; } 
@override int get hashCode { return siteTag.hashCode; } 
@override String toString() { return 'RumSiteTagResponseSingleResult(siteTag: $siteTag)'; } 
 }
