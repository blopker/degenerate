// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UrlSubmit {const UrlSubmit({this.skippedUrls, this.submittedUrls, });

factory UrlSubmit.fromJson(Map<String, dynamic> json) { return UrlSubmit(
  skippedUrls: (json['skipped_urls'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  submittedUrls: (json['submitted_urls'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final List<Map<String,dynamic>>? skippedUrls;

final List<Map<String,dynamic>>? submittedUrls;

Map<String, dynamic> toJson() { return {
  if (skippedUrls != null) 'skipped_urls': skippedUrls?.map((e) => e).toList(),
  if (submittedUrls != null) 'submitted_urls': submittedUrls?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UrlSubmit copyWith({List<Map<String, dynamic>> Function()? skippedUrls, List<Map<String, dynamic>> Function()? submittedUrls, }) { return UrlSubmit(
  skippedUrls: skippedUrls != null ? skippedUrls() : this.skippedUrls,
  submittedUrls: submittedUrls != null ? submittedUrls() : this.submittedUrls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlSubmit &&
          listEquals(skippedUrls, other.skippedUrls) &&
          listEquals(submittedUrls, other.submittedUrls); } 
@override int get hashCode { return Object.hash(Object.hashAll(skippedUrls ?? const []), Object.hashAll(submittedUrls ?? const [])); } 
@override String toString() { return 'UrlSubmit(skippedUrls: $skippedUrls, submittedUrls: $submittedUrls)'; } 
 }
