// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetPresetsPresetIdResponseDataPermissionsChatPublic {const GetPresetsPresetIdResponseDataPermissionsChatPublic({required this.canSend, required this.files, required this.text, });

factory GetPresetsPresetIdResponseDataPermissionsChatPublic.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseDataPermissionsChatPublic(
  canSend: json['can_send'] as bool,
  files: json['files'] as bool,
  text: json['text'] as bool,
); }

/// Can send messages in general
final bool canSend;

/// Can send file messages
final bool files;

/// Can send text messages
final bool text;

Map<String, dynamic> toJson() { return {
  'can_send': canSend,
  'files': files,
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_send') && json['can_send'] is bool &&
      json.containsKey('files') && json['files'] is bool &&
      json.containsKey('text') && json['text'] is bool; } 
GetPresetsPresetIdResponseDataPermissionsChatPublic copyWith({bool? canSend, bool? files, bool? text, }) { return GetPresetsPresetIdResponseDataPermissionsChatPublic(
  canSend: canSend ?? this.canSend,
  files: files ?? this.files,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseDataPermissionsChatPublic &&
          canSend == other.canSend &&
          files == other.files &&
          text == other.text; } 
@override int get hashCode { return Object.hash(canSend, files, text); } 
@override String toString() { return 'GetPresetsPresetIdResponseDataPermissionsChatPublic(canSend: $canSend, files: $files, text: $text)'; } 
 }
