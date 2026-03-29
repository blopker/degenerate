// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerCreateScanResponse4002Errors {const UrlscannerCreateScanResponse4002Errors({required this.detail, required this.status, required this.title, });

factory UrlscannerCreateScanResponse4002Errors.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanResponse4002Errors(
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
UrlscannerCreateScanResponse4002Errors copyWith({String? detail, int? status, String? title, }) { return UrlscannerCreateScanResponse4002Errors(
  detail: detail ?? this.detail,
  status: status ?? this.status,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanResponse4002Errors &&
          detail == other.detail &&
          status == other.status &&
          title == other.title; } 
@override int get hashCode { return Object.hash(detail, status, title); } 
@override String toString() { return 'UrlscannerCreateScanResponse4002Errors(detail: $detail, status: $status, title: $title)'; } 
 }
