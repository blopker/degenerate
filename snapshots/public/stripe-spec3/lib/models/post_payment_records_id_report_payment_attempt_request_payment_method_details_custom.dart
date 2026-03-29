// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom {const PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom({this.displayName, this.type, });

factory PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom(
  displayName: json['display_name'] as String?,
  type: json['type'] as String?,
); }

final String? displayName;

final String? type;

Map<String, dynamic> toJson() { return {
  'display_name': ?displayName,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom copyWith({String Function()? displayName, String Function()? type, }) { return PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom(
  displayName: displayName != null ? displayName() : this.displayName,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom &&
          displayName == other.displayName &&
          type == other.type; } 
@override int get hashCode { return Object.hash(displayName, type); } 
@override String toString() { return 'PostPaymentRecordsIdReportPaymentAttemptRequestPaymentMethodDetailsCustom(displayName: $displayName, type: $type)'; } 
 }
