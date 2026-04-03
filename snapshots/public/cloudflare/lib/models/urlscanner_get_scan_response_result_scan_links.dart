// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_links_link.dart';@immutable final class UrlscannerGetScanResponseResultScanLinks {const UrlscannerGetScanResponseResultScanLinks({this.link});

factory UrlscannerGetScanResponseResultScanLinks.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanLinks(
  link: json['link'] != null ? UrlscannerGetScanResponseResultScanLinksLink.fromJson(json['link'] as Map<String, dynamic>) : null,
); }

final UrlscannerGetScanResponseResultScanLinksLink? link;

Map<String, dynamic> toJson() { return {
  if (link != null) 'link': link?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'link'}.contains(key)); } 
UrlscannerGetScanResponseResultScanLinks copyWith({UrlscannerGetScanResponseResultScanLinksLink Function()? link}) { return UrlscannerGetScanResponseResultScanLinks(
  link: link != null ? link() : this.link,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanLinks &&
          link == other.link; } 
@override int get hashCode { return link.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanLinks(link: $link)'; } 
 }
