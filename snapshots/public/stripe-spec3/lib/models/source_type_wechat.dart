// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SourceTypeWechat {const SourceTypeWechat({this.prepayId, this.qrCodeUrl, this.statementDescriptor, });

factory SourceTypeWechat.fromJson(Map<String, dynamic> json) { return SourceTypeWechat(
  prepayId: json['prepay_id'] as String?,
  qrCodeUrl: json['qr_code_url'] as String?,
  statementDescriptor: json['statement_descriptor'] as String?,
); }

final String? prepayId;

final String? qrCodeUrl;

final String? statementDescriptor;

Map<String, dynamic> toJson() { return {
  'prepay_id': ?prepayId,
  'qr_code_url': ?qrCodeUrl,
  'statement_descriptor': ?statementDescriptor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'prepay_id', 'qr_code_url', 'statement_descriptor'}.contains(key)); } 
SourceTypeWechat copyWith({String Function()? prepayId, String? Function()? qrCodeUrl, String Function()? statementDescriptor, }) { return SourceTypeWechat(
  prepayId: prepayId != null ? prepayId() : this.prepayId,
  qrCodeUrl: qrCodeUrl != null ? qrCodeUrl() : this.qrCodeUrl,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SourceTypeWechat &&
          prepayId == other.prepayId &&
          qrCodeUrl == other.qrCodeUrl &&
          statementDescriptor == other.statementDescriptor; } 
@override int get hashCode { return Object.hash(prepayId, qrCodeUrl, statementDescriptor); } 
@override String toString() { return 'SourceTypeWechat(prepayId: $prepayId, qrCodeUrl: $qrCodeUrl, statementDescriptor: $statementDescriptor)'; } 
 }
