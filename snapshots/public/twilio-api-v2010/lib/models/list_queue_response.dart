// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_queue.dart';final class ListQueueResponse {const ListQueueResponse({this.queues, this.end, this.firstPageUri, this.nextPageUri, this.page, this.pageSize, this.previousPageUri, this.start, this.uri, });

factory ListQueueResponse.fromJson(Map<String, dynamic> json) { return ListQueueResponse(
  queues: (json['queues'] as List<dynamic>?)?.map((e) => AccountQueue.fromJson(e as Map<String, dynamic>)).toList(),
  end: json['end'] != null ? (json['end'] as num).toInt() : null,
  firstPageUri: json['first_page_uri'] != null ? Uri.parse(json['first_page_uri'] as String) : null,
  nextPageUri: json['next_page_uri'] != null ? Uri.parse(json['next_page_uri'] as String) : null,
  page: json['page'] != null ? (json['page'] as num).toInt() : null,
  pageSize: json['page_size'] != null ? (json['page_size'] as num).toInt() : null,
  previousPageUri: json['previous_page_uri'] != null ? Uri.parse(json['previous_page_uri'] as String) : null,
  start: json['start'] != null ? (json['start'] as num).toInt() : null,
  uri: json['uri'] != null ? Uri.parse(json['uri'] as String) : null,
); }

final List<AccountQueue>? queues;

final int? end;

final Uri? firstPageUri;

final Uri? nextPageUri;

final int? page;

final int? pageSize;

final Uri? previousPageUri;

final int? start;

final Uri? uri;

Map<String, dynamic> toJson() { return {
  if (queues != null) 'queues': queues?.map((e) => e.toJson()).toList(),
  'end': ?end,
  if (firstPageUri != null) 'first_page_uri': firstPageUri?.toString(),
  if (nextPageUri != null) 'next_page_uri': nextPageUri?.toString(),
  'page': ?page,
  'page_size': ?pageSize,
  if (previousPageUri != null) 'previous_page_uri': previousPageUri?.toString(),
  'start': ?start,
  if (uri != null) 'uri': uri?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ListQueueResponse copyWith({List<AccountQueue> Function()? queues, int Function()? end, Uri Function()? firstPageUri, Uri? Function()? nextPageUri, int Function()? page, int Function()? pageSize, Uri? Function()? previousPageUri, int Function()? start, Uri Function()? uri, }) { return ListQueueResponse(
  queues: queues != null ? queues() : this.queues,
  end: end != null ? end() : this.end,
  firstPageUri: firstPageUri != null ? firstPageUri() : this.firstPageUri,
  nextPageUri: nextPageUri != null ? nextPageUri() : this.nextPageUri,
  page: page != null ? page() : this.page,
  pageSize: pageSize != null ? pageSize() : this.pageSize,
  previousPageUri: previousPageUri != null ? previousPageUri() : this.previousPageUri,
  start: start != null ? start() : this.start,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListQueueResponse &&
          listEquals(queues, other.queues) &&
          end == other.end &&
          firstPageUri == other.firstPageUri &&
          nextPageUri == other.nextPageUri &&
          page == other.page &&
          pageSize == other.pageSize &&
          previousPageUri == other.previousPageUri &&
          start == other.start &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(Object.hashAll(queues ?? const []), end, firstPageUri, nextPageUri, page, pageSize, previousPageUri, start, uri); } 
@override String toString() { return 'ListQueueResponse(queues: $queues, end: $end, firstPageUri: $firstPageUri, nextPageUri: $nextPageUri, page: $page, pageSize: $pageSize, previousPageUri: $previousPageUri, start: $start, uri: $uri)'; } 
 }
