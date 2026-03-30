// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitUpdatePresetPermissionsChatPublic {const RealtimekitUpdatePresetPermissionsChatPublic({this.canSend, this.files, this.text, });

factory RealtimekitUpdatePresetPermissionsChatPublic.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePresetPermissionsChatPublic(
  canSend: json['can_send'] as bool?,
  files: json['files'] as bool?,
  text: json['text'] as bool?,
); }

/// Can send messages in general
final bool? canSend;

/// Can send file messages
final bool? files;

/// Can send text messages
final bool? text;

Map<String, dynamic> toJson() { return {
  'can_send': ?canSend,
  'files': ?files,
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'can_send', 'files', 'text'}.contains(key)); } 
RealtimekitUpdatePresetPermissionsChatPublic copyWith({bool Function()? canSend, bool Function()? files, bool Function()? text, }) { return RealtimekitUpdatePresetPermissionsChatPublic(
  canSend: canSend != null ? canSend() : this.canSend,
  files: files != null ? files() : this.files,
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePresetPermissionsChatPublic &&
          canSend == other.canSend &&
          files == other.files &&
          text == other.text; } 
@override int get hashCode { return Object.hash(canSend, files, text); } 
@override String toString() { return 'RealtimekitUpdatePresetPermissionsChatPublic(canSend: $canSend, files: $files, text: $text)'; } 
 }
