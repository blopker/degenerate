// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanHarResponse4042Errors {const UrlscannerGetScanHarResponse4042Errors({required this.detail, required this.status, required this.title, });

factory UrlscannerGetScanHarResponse4042Errors.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponse4042Errors(
  detail: json['detail'] as String,
  status: (json['status'] as num).toInt(),
  title: json['title'] as String,
); }

final String detail;

/// Status code.
final int status;

final String title;

Map<String, dynamic> toJson() { return {
  'detail': detail,
  'status': status,
  'title': title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('detail') && json['detail'] is String &&
      json.containsKey('status') && json['status'] is num &&
      json.containsKey('title') && json['title'] is String; } 
UrlscannerGetScanHarResponse4042Errors copyWith({String? detail, int? status, String? title, }) { return UrlscannerGetScanHarResponse4042Errors(
  detail: detail ?? this.detail,
  status: status ?? this.status,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponse4042Errors &&
          detail == other.detail &&
          status == other.status &&
          title == other.title; } 
@override int get hashCode { return Object.hash(detail, status, title); } 
@override String toString() { return 'UrlscannerGetScanHarResponse4042Errors(detail: $detail, status: $status, title: $title)'; } 
 }
