// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'user_message_input_text.dart';import 'user_message_quoted_text.dart';/// Content blocks that comprise a user message.
sealed class UserMessageItemContent {const UserMessageItemContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory UserMessageItemContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'input_text' => UserMessageItemContentInputText.fromJson(json),
  'quoted_text' => UserMessageItemContentQuotedText.fromJson(json),
  _ => UserMessageItemContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is UserMessageItemContent$Unknown; } 
 }
@immutable final class UserMessageItemContentInputText extends UserMessageItemContent {const UserMessageItemContentInputText(this.userMessageInputText);

factory UserMessageItemContentInputText.fromJson(Map<String, dynamic> json) { return UserMessageItemContentInputText(UserMessageInputText.fromJson(json)); }

final UserMessageInputText userMessageInputText;

@override String get type { return 'input_text'; } 
@override Map<String, dynamic> toJson() { return {...userMessageInputText.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserMessageItemContentInputText && userMessageInputText == other.userMessageInputText; } 
@override int get hashCode { return userMessageInputText.hashCode; } 
@override String toString() { return 'UserMessageItemContentInputText(userMessageInputText: $userMessageInputText)'; } 
 }
@immutable final class UserMessageItemContentQuotedText extends UserMessageItemContent {const UserMessageItemContentQuotedText(this.userMessageQuotedText);

factory UserMessageItemContentQuotedText.fromJson(Map<String, dynamic> json) { return UserMessageItemContentQuotedText(UserMessageQuotedText.fromJson(json)); }

final UserMessageQuotedText userMessageQuotedText;

@override String get type { return 'quoted_text'; } 
@override Map<String, dynamic> toJson() { return {...userMessageQuotedText.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserMessageItemContentQuotedText && userMessageQuotedText == other.userMessageQuotedText; } 
@override int get hashCode { return userMessageQuotedText.hashCode; } 
@override String toString() { return 'UserMessageItemContentQuotedText(userMessageQuotedText: $userMessageQuotedText)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class UserMessageItemContent$Unknown extends UserMessageItemContent {const UserMessageItemContent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UserMessageItemContent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'UserMessageItemContent.unknown($json)'; } 
 }
