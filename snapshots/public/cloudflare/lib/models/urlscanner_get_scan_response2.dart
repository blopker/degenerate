// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_data.dart';import 'urlscanner_get_scan_response2_lists.dart';import 'urlscanner_get_scan_response2_meta.dart';import 'urlscanner_get_scan_response2_page.dart';import 'urlscanner_get_scan_response2_scanner.dart';import 'urlscanner_get_scan_response2_stats.dart';import 'urlscanner_get_scan_response2_task.dart';import 'urlscanner_get_scan_response2_verdicts.dart';@immutable final class UrlscannerGetScanResponse2 {const UrlscannerGetScanResponse2({required this.data, required this.lists, required this.meta, required this.page, required this.scanner, required this.stats, required this.task, required this.verdicts, });

factory UrlscannerGetScanResponse2.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2(
  data: UrlscannerGetScanResponse2Data.fromJson(json['data'] as Map<String, dynamic>),
  lists: UrlscannerGetScanResponse2Lists.fromJson(json['lists'] as Map<String, dynamic>),
  meta: UrlscannerGetScanResponse2Meta.fromJson(json['meta'] as Map<String, dynamic>),
  page: UrlscannerGetScanResponse2Page.fromJson(json['page'] as Map<String, dynamic>),
  scanner: UrlscannerGetScanResponse2Scanner.fromJson(json['scanner'] as Map<String, dynamic>),
  stats: UrlscannerGetScanResponse2Stats.fromJson(json['stats'] as Map<String, dynamic>),
  task: UrlscannerGetScanResponse2Task.fromJson(json['task'] as Map<String, dynamic>),
  verdicts: UrlscannerGetScanResponse2Verdicts.fromJson(json['verdicts'] as Map<String, dynamic>),
); }

final UrlscannerGetScanResponse2Data data;

final UrlscannerGetScanResponse2Lists lists;

final UrlscannerGetScanResponse2Meta meta;

final UrlscannerGetScanResponse2Page page;

final UrlscannerGetScanResponse2Scanner scanner;

final UrlscannerGetScanResponse2Stats stats;

final UrlscannerGetScanResponse2Task task;

final UrlscannerGetScanResponse2Verdicts verdicts;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'lists': lists.toJson(),
  'meta': meta.toJson(),
  'page': page.toJson(),
  'scanner': scanner.toJson(),
  'stats': stats.toJson(),
  'task': task.toJson(),
  'verdicts': verdicts.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('lists') &&
      json.containsKey('meta') &&
      json.containsKey('page') &&
      json.containsKey('scanner') &&
      json.containsKey('stats') &&
      json.containsKey('task') &&
      json.containsKey('verdicts'); } 
UrlscannerGetScanResponse2 copyWith({UrlscannerGetScanResponse2Data? data, UrlscannerGetScanResponse2Lists? lists, UrlscannerGetScanResponse2Meta? meta, UrlscannerGetScanResponse2Page? page, UrlscannerGetScanResponse2Scanner? scanner, UrlscannerGetScanResponse2Stats? stats, UrlscannerGetScanResponse2Task? task, UrlscannerGetScanResponse2Verdicts? verdicts, }) { return UrlscannerGetScanResponse2(
  data: data ?? this.data,
  lists: lists ?? this.lists,
  meta: meta ?? this.meta,
  page: page ?? this.page,
  scanner: scanner ?? this.scanner,
  stats: stats ?? this.stats,
  task: task ?? this.task,
  verdicts: verdicts ?? this.verdicts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2 &&
          data == other.data &&
          lists == other.lists &&
          meta == other.meta &&
          page == other.page &&
          scanner == other.scanner &&
          stats == other.stats &&
          task == other.task &&
          verdicts == other.verdicts; } 
@override int get hashCode { return Object.hash(data, lists, meta, page, scanner, stats, task, verdicts); } 
@override String toString() { return 'UrlscannerGetScanResponse2(data: $data, lists: $lists, meta: $meta, page: $page, scanner: $scanner, stats: $stats, task: $task, verdicts: $verdicts)'; } 
 }
