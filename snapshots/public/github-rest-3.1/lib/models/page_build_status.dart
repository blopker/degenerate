// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Page Build Status
@immutable final class PageBuildStatus {const PageBuildStatus({required this.url, required this.status, });

factory PageBuildStatus.fromJson(Map<String, dynamic> json) { return PageBuildStatus(
  url: Uri.parse(json['url'] as String),
  status: json['status'] as String,
); }

final Uri url;

final String status;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('status') && json['status'] is String; } 
PageBuildStatus copyWith({Uri? url, String? status, }) { return PageBuildStatus(
  url: url ?? this.url,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageBuildStatus &&
          url == other.url &&
          status == other.status; } 
@override int get hashCode { return Object.hash(url, status); } 
@override String toString() { return 'PageBuildStatus(url: $url, status: $status)'; } 
 }
