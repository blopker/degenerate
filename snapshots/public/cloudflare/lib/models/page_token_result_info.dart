// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PageTokenResultInfo {const PageTokenResultInfo({this.nextPageToken, this.totalSize, });

factory PageTokenResultInfo.fromJson(Map<String, dynamic> json) { return PageTokenResultInfo(
  nextPageToken: json['next_page_token'] as String?,
  totalSize: json['total_size'] != null ? (json['total_size'] as num).toInt() : null,
); }

/// Use this opaque token in the next request to retrieve the
/// next page.
/// 
/// Parameters used to filter the retrieved list must remain in subsequent
/// requests with a page token.
final String? nextPageToken;

/// Counts the total amount of items in a list with the applied filters. The API omits next_page_token to indicate no more items in a particular list.
final int? totalSize;

Map<String, dynamic> toJson() { return {
  'next_page_token': ?nextPageToken,
  'total_size': ?totalSize,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'next_page_token', 'total_size'}.contains(key)); } 
PageTokenResultInfo copyWith({String Function()? nextPageToken, int Function()? totalSize, }) { return PageTokenResultInfo(
  nextPageToken: nextPageToken != null ? nextPageToken() : this.nextPageToken,
  totalSize: totalSize != null ? totalSize() : this.totalSize,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PageTokenResultInfo &&
          nextPageToken == other.nextPageToken &&
          totalSize == other.totalSize; } 
@override int get hashCode { return Object.hash(nextPageToken, totalSize); } 
@override String toString() { return 'PageTokenResultInfo(nextPageToken: $nextPageToken, totalSize: $totalSize)'; } 
 }
