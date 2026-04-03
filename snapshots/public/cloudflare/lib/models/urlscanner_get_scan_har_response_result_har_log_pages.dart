// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response_result_har_log_pages_page_timings.dart';@immutable final class UrlscannerGetScanHarResponseResultHarLogPages {const UrlscannerGetScanHarResponseResultHarLogPages({required this.id, required this.pageTimings, required this.startedDateTime, required this.title, });

factory UrlscannerGetScanHarResponseResultHarLogPages.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponseResultHarLogPages(
  id: json['id'] as String,
  pageTimings: UrlscannerGetScanHarResponseResultHarLogPagesPageTimings.fromJson(json['pageTimings'] as Map<String, dynamic>),
  startedDateTime: json['startedDateTime'] as String,
  title: json['title'] as String,
); }

final String id;

final UrlscannerGetScanHarResponseResultHarLogPagesPageTimings pageTimings;

final String startedDateTime;

final String title;

Map<String, dynamic> toJson() { return {
  'id': id,
  'pageTimings': pageTimings.toJson(),
  'startedDateTime': startedDateTime,
  'title': title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('pageTimings') &&
      json.containsKey('startedDateTime') && json['startedDateTime'] is String &&
      json.containsKey('title') && json['title'] is String; } 
UrlscannerGetScanHarResponseResultHarLogPages copyWith({String? id, UrlscannerGetScanHarResponseResultHarLogPagesPageTimings? pageTimings, String? startedDateTime, String? title, }) { return UrlscannerGetScanHarResponseResultHarLogPages(
  id: id ?? this.id,
  pageTimings: pageTimings ?? this.pageTimings,
  startedDateTime: startedDateTime ?? this.startedDateTime,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponseResultHarLogPages &&
          id == other.id &&
          pageTimings == other.pageTimings &&
          startedDateTime == other.startedDateTime &&
          title == other.title; } 
@override int get hashCode { return Object.hash(id, pageTimings, startedDateTime, title); } 
@override String toString() { return 'UrlscannerGetScanHarResponseResultHarLogPages(id: $id, pageTimings: $pageTimings, startedDateTime: $startedDateTime, title: $title)'; } 
 }
