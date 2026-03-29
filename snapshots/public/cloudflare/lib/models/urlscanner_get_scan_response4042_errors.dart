// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponse4042Errors {const UrlscannerGetScanResponse4042Errors({required this.detail, required this.status, required this.title, });

factory UrlscannerGetScanResponse4042Errors.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse4042Errors(
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
UrlscannerGetScanResponse4042Errors copyWith({String? detail, int? status, String? title, }) { return UrlscannerGetScanResponse4042Errors(
  detail: detail ?? this.detail,
  status: status ?? this.status,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse4042Errors &&
          detail == other.detail &&
          status == other.status &&
          title == other.title; } 
@override int get hashCode { return Object.hash(detail, status, title); } 
@override String toString() { return 'UrlscannerGetScanResponse4042Errors(detail: $detail, status: $status, title: $title)'; } 
 }
