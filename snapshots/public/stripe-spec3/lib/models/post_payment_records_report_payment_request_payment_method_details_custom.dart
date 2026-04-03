// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom {const PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom({this.displayName, this.type, });

factory PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom.fromJson(Map<String, dynamic> json) { return PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom(
  displayName: json['display_name'] as String?,
  type: json['type'] as String?,
); }

final String? displayName;

final String? type;

Map<String, dynamic> toJson() { return {
  'display_name': ?displayName,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_name', 'type'}.contains(key)); } 
PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom copyWith({String Function()? displayName, String Function()? type, }) { return PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom(
  displayName: displayName != null ? displayName() : this.displayName,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom &&
          displayName == other.displayName &&
          type == other.type; } 
@override int get hashCode { return Object.hash(displayName, type); } 
@override String toString() { return 'PostPaymentRecordsReportPaymentRequestPaymentMethodDetailsCustom(displayName: $displayName, type: $type)'; } 
 }
