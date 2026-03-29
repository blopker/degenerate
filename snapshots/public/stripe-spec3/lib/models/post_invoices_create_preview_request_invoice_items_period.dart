// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesCreatePreviewRequestInvoiceItemsPeriod {const PostInvoicesCreatePreviewRequestInvoiceItemsPeriod({required this.end, required this.start, });

factory PostInvoicesCreatePreviewRequestInvoiceItemsPeriod.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestInvoiceItemsPeriod(
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
PostInvoicesCreatePreviewRequestInvoiceItemsPeriod copyWith({int? end, int? start, }) { return PostInvoicesCreatePreviewRequestInvoiceItemsPeriod(
  end: end ?? this.end,
  start: start ?? this.start,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestInvoiceItemsPeriod &&
          end == other.end &&
          start == other.start; } 
@override int get hashCode { return Object.hash(end, start); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestInvoiceItemsPeriod(end: $end, start: $start)'; } 
 }
