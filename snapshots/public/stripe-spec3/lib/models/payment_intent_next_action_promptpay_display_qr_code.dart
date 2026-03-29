// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentIntentNextActionPromptpayDisplayQrCode {const PaymentIntentNextActionPromptpayDisplayQrCode({required this.data, required this.hostedInstructionsUrl, required this.imageUrlPng, required this.imageUrlSvg, });

factory PaymentIntentNextActionPromptpayDisplayQrCode.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionPromptpayDisplayQrCode(
  data: json['data'] as String,
  hostedInstructionsUrl: json['hosted_instructions_url'] as String,
  imageUrlPng: json['image_url_png'] as String,
  imageUrlSvg: json['image_url_svg'] as String,
); }

/// The raw data string used to generate QR code, it should be used together with QR code library.
final String data;

/// The URL to the hosted PromptPay instructions page, which allows customers to view the PromptPay QR code.
final String hostedInstructionsUrl;

/// The PNG path used to render the QR code, can be used as the source in an HTML img tag
final String imageUrlPng;

/// The SVG path used to render the QR code, can be used as the source in an HTML img tag
final String imageUrlSvg;

Map<String, dynamic> toJson() { return {
  'data': data,
  'hosted_instructions_url': hostedInstructionsUrl,
  'image_url_png': imageUrlPng,
  'image_url_svg': imageUrlSvg,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') && json['data'] is String &&
      json.containsKey('hosted_instructions_url') && json['hosted_instructions_url'] is String &&
      json.containsKey('image_url_png') && json['image_url_png'] is String &&
      json.containsKey('image_url_svg') && json['image_url_svg'] is String; } 
PaymentIntentNextActionPromptpayDisplayQrCode copyWith({String? data, String? hostedInstructionsUrl, String? imageUrlPng, String? imageUrlSvg, }) { return PaymentIntentNextActionPromptpayDisplayQrCode(
  data: data ?? this.data,
  hostedInstructionsUrl: hostedInstructionsUrl ?? this.hostedInstructionsUrl,
  imageUrlPng: imageUrlPng ?? this.imageUrlPng,
  imageUrlSvg: imageUrlSvg ?? this.imageUrlSvg,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionPromptpayDisplayQrCode &&
          data == other.data &&
          hostedInstructionsUrl == other.hostedInstructionsUrl &&
          imageUrlPng == other.imageUrlPng &&
          imageUrlSvg == other.imageUrlSvg; } 
@override int get hashCode { return Object.hash(data, hostedInstructionsUrl, imageUrlPng, imageUrlSvg); } 
@override String toString() { return 'PaymentIntentNextActionPromptpayDisplayQrCode(data: $data, hostedInstructionsUrl: $hostedInstructionsUrl, imageUrlPng: $imageUrlPng, imageUrlSvg: $imageUrlSvg)'; } 
 }
