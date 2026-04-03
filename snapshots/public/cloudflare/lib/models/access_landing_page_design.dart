// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The background color of the log in button on the landing page.
extension type const AccessButtonColor(String value) {
factory AccessButtonColor.fromJson(String json) => AccessButtonColor(json);

String toJson() => value;

}
/// The color of the text in the log in button on the landing page.
extension type const AccessButtonTextColor(String value) {
factory AccessButtonTextColor.fromJson(String json) => AccessButtonTextColor(json);

String toJson() => value;

}
/// The URL of the image shown on the landing page.
extension type const AccessImageUrl(String value) {
factory AccessImageUrl.fromJson(String json) => AccessImageUrl(json);

String toJson() => value;

}
/// The message shown on the landing page.
extension type const AccessMessage(String value) {
factory AccessMessage.fromJson(String json) => AccessMessage(json);

String toJson() => value;

}
/// The title shown on the landing page.
extension type const AccessTitle(String value) {
factory AccessTitle.fromJson(String json) => AccessTitle(json);

String toJson() => value;

}
/// The design of the App Launcher landing page shown to users when they log in.
@immutable final class AccessLandingPageDesign {const AccessLandingPageDesign({this.buttonColor, this.buttonTextColor, this.imageUrl, this.message, this.title, });

factory AccessLandingPageDesign.fromJson(Map<String, dynamic> json) { return AccessLandingPageDesign(
  buttonColor: json['button_color'] != null ? AccessButtonColor.fromJson(json['button_color'] as String) : null,
  buttonTextColor: json['button_text_color'] != null ? AccessButtonTextColor.fromJson(json['button_text_color'] as String) : null,
  imageUrl: json['image_url'] != null ? AccessImageUrl.fromJson(json['image_url'] as String) : null,
  message: json['message'] != null ? AccessMessage.fromJson(json['message'] as String) : null,
  title: json['title'] != null ? AccessTitle.fromJson(json['title'] as String) : null,
); }

/// The background color of the log in button on the landing page.
final AccessButtonColor? buttonColor;

/// The color of the text in the log in button on the landing page.
final AccessButtonTextColor? buttonTextColor;

/// The URL of the image shown on the landing page.
final AccessImageUrl? imageUrl;

final AccessMessage? message;

final AccessTitle? title;

Map<String, dynamic> toJson() { return {
  if (buttonColor != null) 'button_color': buttonColor?.toJson(),
  if (buttonTextColor != null) 'button_text_color': buttonTextColor?.toJson(),
  if (imageUrl != null) 'image_url': imageUrl?.toJson(),
  if (message != null) 'message': message?.toJson(),
  if (title != null) 'title': title?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'button_color', 'button_text_color', 'image_url', 'message', 'title'}.contains(key)); } 
AccessLandingPageDesign copyWith({AccessButtonColor Function()? buttonColor, AccessButtonTextColor Function()? buttonTextColor, AccessImageUrl Function()? imageUrl, AccessMessage Function()? message, AccessTitle Function()? title, }) { return AccessLandingPageDesign(
  buttonColor: buttonColor != null ? buttonColor() : this.buttonColor,
  buttonTextColor: buttonTextColor != null ? buttonTextColor() : this.buttonTextColor,
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  message: message != null ? message() : this.message,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessLandingPageDesign &&
          buttonColor == other.buttonColor &&
          buttonTextColor == other.buttonTextColor &&
          imageUrl == other.imageUrl &&
          message == other.message &&
          title == other.title; } 
@override int get hashCode { return Object.hash(buttonColor, buttonTextColor, imageUrl, message, title); } 
@override String toString() { return 'AccessLandingPageDesign(buttonColor: $buttonColor, buttonTextColor: $buttonTextColor, imageUrl: $imageUrl, message: $message, title: $title)'; } 
 }
