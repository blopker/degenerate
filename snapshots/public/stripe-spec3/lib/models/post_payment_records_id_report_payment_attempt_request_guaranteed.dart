// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Information about the payment attempt guarantee.
@immutable final class PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed {const PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed({required this.guaranteedAt});

factory PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed(
  guaranteedAt: (json['guaranteed_at'] as num).toInt(),
); }

final int guaranteedAt;

Map<String, dynamic> toJson() { return {
  'guaranteed_at': guaranteedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('guaranteed_at') && json['guaranteed_at'] is num; } 
PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed copyWith({int? guaranteedAt}) { return PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed(
  guaranteedAt: guaranteedAt ?? this.guaranteedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed &&
          guaranteedAt == other.guaranteedAt; } 
@override int get hashCode { return guaranteedAt.hashCode; } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptRequestGuaranteed(guaranteedAt: $guaranteedAt)'; } 
 }
