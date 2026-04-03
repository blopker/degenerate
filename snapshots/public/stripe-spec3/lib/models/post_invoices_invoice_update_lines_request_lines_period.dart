// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceUpdateLinesRequestLinesPeriod {const PostInvoicesInvoiceUpdateLinesRequestLinesPeriod({required this.end, required this.start, });

factory PostInvoicesInvoiceUpdateLinesRequestLinesPeriod.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceUpdateLinesRequestLinesPeriod(
  end: (json['end'] as num).toInt(),
  start: (json['start'] as num).toInt(),
); }

final int end;

final int start;

Map<String, dynamic> toJson() { return {
  'end': end,
  'start': start,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('end') && json['end'] is num &&
      json.containsKey('start') && json['start'] is num; } 
PostInvoicesInvoiceUpdateLinesRequestLinesPeriod copyWith({int? end, int? start, }) { return PostInvoicesInvoiceUpdateLinesRequestLinesPeriod(
  end: end ?? this.end,
  start: start ?? this.start,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesPeriod &&
          end == other.end &&
          start == other.start; } 
@override int get hashCode { return Object.hash(end, start); } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesPeriod(end: $end, start: $start)'; } 
 }
