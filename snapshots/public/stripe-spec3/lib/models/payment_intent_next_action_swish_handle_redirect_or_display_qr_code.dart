// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_next_action_swish_qr_code.dart';/// 
@immutable final class PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode {const PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode({required this.hostedInstructionsUrl, required this.qrCode, });

factory PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode(
  hostedInstructionsUrl: json['hosted_instructions_url'] as String,
  qrCode: PaymentIntentNextActionSwishQrCode.fromJson(json['qr_code'] as Map<String, dynamic>),
); }

/// The URL to the hosted Swish instructions page, which allows customers to view the QR code.
final String hostedInstructionsUrl;

final PaymentIntentNextActionSwishQrCode qrCode;

Map<String, dynamic> toJson() { return {
  'hosted_instructions_url': hostedInstructionsUrl,
  'qr_code': qrCode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('hosted_instructions_url') && json['hosted_instructions_url'] is String &&
      json.containsKey('qr_code'); } 
PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode copyWith({String? hostedInstructionsUrl, PaymentIntentNextActionSwishQrCode? qrCode, }) { return PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode(
  hostedInstructionsUrl: hostedInstructionsUrl ?? this.hostedInstructionsUrl,
  qrCode: qrCode ?? this.qrCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode &&
          hostedInstructionsUrl == other.hostedInstructionsUrl &&
          qrCode == other.qrCode; } 
@override int get hashCode { return Object.hash(hostedInstructionsUrl, qrCode); } 
@override String toString() { return 'PaymentIntentNextActionSwishHandleRedirectOrDisplayQrCode(hostedInstructionsUrl: $hostedInstructionsUrl, qrCode: $qrCode)'; } 
 }
