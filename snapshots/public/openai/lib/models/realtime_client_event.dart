// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_client_event_conversation_item_create.dart';import 'realtime_client_event_conversation_item_delete.dart';import 'realtime_client_event_conversation_item_retrieve.dart';import 'realtime_client_event_conversation_item_truncate.dart';import 'realtime_client_event_input_audio_buffer_append.dart';import 'realtime_client_event_input_audio_buffer_clear.dart';import 'realtime_client_event_input_audio_buffer_commit.dart';import 'realtime_client_event_output_audio_buffer_clear.dart';import 'realtime_client_event_response_cancel.dart';import 'realtime_client_event_response_create.dart';import 'realtime_client_event_session_update.dart';/// A realtime client event.
/// 
sealed class RealtimeClientEvent {const RealtimeClientEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeClientEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'conversation.item.create' => RealtimeClientEvent$ConversationItemCreate.fromJson(json),
  'conversation.item.delete' => RealtimeClientEvent$ConversationItemDelete.fromJson(json),
  'conversation.item.retrieve' => RealtimeClientEvent$ConversationItemRetrieve.fromJson(json),
  'conversation.item.truncate' => RealtimeClientEvent$ConversationItemTruncate.fromJson(json),
  'input_audio_buffer.append' => RealtimeClientEvent$InputAudioBufferAppend.fromJson(json),
  'input_audio_buffer.clear' => RealtimeClientEvent$InputAudioBufferClear.fromJson(json),
  'output_audio_buffer.clear' => RealtimeClientEvent$OutputAudioBufferClear.fromJson(json),
  'input_audio_buffer.commit' => RealtimeClientEvent$InputAudioBufferCommit.fromJson(json),
  'response.cancel' => RealtimeClientEvent$ResponseCancel.fromJson(json),
  'response.create' => RealtimeClientEvent$ResponseCreate.fromJson(json),
  'session.update' => RealtimeClientEvent$SessionUpdate.fromJson(json),
  _ => RealtimeClientEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeClientEvent$Unknown; } 
 }
@immutable final class RealtimeClientEvent$ConversationItemCreate extends RealtimeClientEvent {const RealtimeClientEvent$ConversationItemCreate(this.realtimeClientEventConversationItemCreate);

factory RealtimeClientEvent$ConversationItemCreate.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$ConversationItemCreate(RealtimeClientEventConversationItemCreate.fromJson(json)); }

final RealtimeClientEventConversationItemCreate realtimeClientEventConversationItemCreate;

@override String get type { return 'conversation.item.create'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemCreate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$ConversationItemCreate && realtimeClientEventConversationItemCreate == other.realtimeClientEventConversationItemCreate; } 
@override int get hashCode { return realtimeClientEventConversationItemCreate.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$ConversationItemCreate(realtimeClientEventConversationItemCreate: $realtimeClientEventConversationItemCreate)'; } 
 }
@immutable final class RealtimeClientEvent$ConversationItemDelete extends RealtimeClientEvent {const RealtimeClientEvent$ConversationItemDelete(this.realtimeClientEventConversationItemDelete);

factory RealtimeClientEvent$ConversationItemDelete.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$ConversationItemDelete(RealtimeClientEventConversationItemDelete.fromJson(json)); }

final RealtimeClientEventConversationItemDelete realtimeClientEventConversationItemDelete;

@override String get type { return 'conversation.item.delete'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemDelete.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$ConversationItemDelete && realtimeClientEventConversationItemDelete == other.realtimeClientEventConversationItemDelete; } 
@override int get hashCode { return realtimeClientEventConversationItemDelete.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$ConversationItemDelete(realtimeClientEventConversationItemDelete: $realtimeClientEventConversationItemDelete)'; } 
 }
@immutable final class RealtimeClientEvent$ConversationItemRetrieve extends RealtimeClientEvent {const RealtimeClientEvent$ConversationItemRetrieve(this.realtimeClientEventConversationItemRetrieve);

factory RealtimeClientEvent$ConversationItemRetrieve.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$ConversationItemRetrieve(RealtimeClientEventConversationItemRetrieve.fromJson(json)); }

final RealtimeClientEventConversationItemRetrieve realtimeClientEventConversationItemRetrieve;

@override String get type { return 'conversation.item.retrieve'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemRetrieve.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$ConversationItemRetrieve && realtimeClientEventConversationItemRetrieve == other.realtimeClientEventConversationItemRetrieve; } 
@override int get hashCode { return realtimeClientEventConversationItemRetrieve.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$ConversationItemRetrieve(realtimeClientEventConversationItemRetrieve: $realtimeClientEventConversationItemRetrieve)'; } 
 }
@immutable final class RealtimeClientEvent$ConversationItemTruncate extends RealtimeClientEvent {const RealtimeClientEvent$ConversationItemTruncate(this.realtimeClientEventConversationItemTruncate);

factory RealtimeClientEvent$ConversationItemTruncate.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$ConversationItemTruncate(RealtimeClientEventConversationItemTruncate.fromJson(json)); }

final RealtimeClientEventConversationItemTruncate realtimeClientEventConversationItemTruncate;

@override String get type { return 'conversation.item.truncate'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemTruncate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$ConversationItemTruncate && realtimeClientEventConversationItemTruncate == other.realtimeClientEventConversationItemTruncate; } 
@override int get hashCode { return realtimeClientEventConversationItemTruncate.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$ConversationItemTruncate(realtimeClientEventConversationItemTruncate: $realtimeClientEventConversationItemTruncate)'; } 
 }
@immutable final class RealtimeClientEvent$InputAudioBufferAppend extends RealtimeClientEvent {const RealtimeClientEvent$InputAudioBufferAppend(this.realtimeClientEventInputAudioBufferAppend);

factory RealtimeClientEvent$InputAudioBufferAppend.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$InputAudioBufferAppend(RealtimeClientEventInputAudioBufferAppend.fromJson(json)); }

final RealtimeClientEventInputAudioBufferAppend realtimeClientEventInputAudioBufferAppend;

@override String get type { return 'input_audio_buffer.append'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventInputAudioBufferAppend.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$InputAudioBufferAppend && realtimeClientEventInputAudioBufferAppend == other.realtimeClientEventInputAudioBufferAppend; } 
@override int get hashCode { return realtimeClientEventInputAudioBufferAppend.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$InputAudioBufferAppend(realtimeClientEventInputAudioBufferAppend: $realtimeClientEventInputAudioBufferAppend)'; } 
 }
@immutable final class RealtimeClientEvent$InputAudioBufferClear extends RealtimeClientEvent {const RealtimeClientEvent$InputAudioBufferClear(this.realtimeClientEventInputAudioBufferClear);

factory RealtimeClientEvent$InputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$InputAudioBufferClear(RealtimeClientEventInputAudioBufferClear.fromJson(json)); }

final RealtimeClientEventInputAudioBufferClear realtimeClientEventInputAudioBufferClear;

@override String get type { return 'input_audio_buffer.clear'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventInputAudioBufferClear.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$InputAudioBufferClear && realtimeClientEventInputAudioBufferClear == other.realtimeClientEventInputAudioBufferClear; } 
@override int get hashCode { return realtimeClientEventInputAudioBufferClear.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$InputAudioBufferClear(realtimeClientEventInputAudioBufferClear: $realtimeClientEventInputAudioBufferClear)'; } 
 }
@immutable final class RealtimeClientEvent$OutputAudioBufferClear extends RealtimeClientEvent {const RealtimeClientEvent$OutputAudioBufferClear(this.realtimeClientEventOutputAudioBufferClear);

factory RealtimeClientEvent$OutputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$OutputAudioBufferClear(RealtimeClientEventOutputAudioBufferClear.fromJson(json)); }

final RealtimeClientEventOutputAudioBufferClear realtimeClientEventOutputAudioBufferClear;

@override String get type { return 'output_audio_buffer.clear'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventOutputAudioBufferClear.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$OutputAudioBufferClear && realtimeClientEventOutputAudioBufferClear == other.realtimeClientEventOutputAudioBufferClear; } 
@override int get hashCode { return realtimeClientEventOutputAudioBufferClear.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$OutputAudioBufferClear(realtimeClientEventOutputAudioBufferClear: $realtimeClientEventOutputAudioBufferClear)'; } 
 }
@immutable final class RealtimeClientEvent$InputAudioBufferCommit extends RealtimeClientEvent {const RealtimeClientEvent$InputAudioBufferCommit(this.realtimeClientEventInputAudioBufferCommit);

factory RealtimeClientEvent$InputAudioBufferCommit.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$InputAudioBufferCommit(RealtimeClientEventInputAudioBufferCommit.fromJson(json)); }

final RealtimeClientEventInputAudioBufferCommit realtimeClientEventInputAudioBufferCommit;

@override String get type { return 'input_audio_buffer.commit'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventInputAudioBufferCommit.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$InputAudioBufferCommit && realtimeClientEventInputAudioBufferCommit == other.realtimeClientEventInputAudioBufferCommit; } 
@override int get hashCode { return realtimeClientEventInputAudioBufferCommit.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$InputAudioBufferCommit(realtimeClientEventInputAudioBufferCommit: $realtimeClientEventInputAudioBufferCommit)'; } 
 }
@immutable final class RealtimeClientEvent$ResponseCancel extends RealtimeClientEvent {const RealtimeClientEvent$ResponseCancel(this.realtimeClientEventResponseCancel);

factory RealtimeClientEvent$ResponseCancel.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$ResponseCancel(RealtimeClientEventResponseCancel.fromJson(json)); }

final RealtimeClientEventResponseCancel realtimeClientEventResponseCancel;

@override String get type { return 'response.cancel'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventResponseCancel.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$ResponseCancel && realtimeClientEventResponseCancel == other.realtimeClientEventResponseCancel; } 
@override int get hashCode { return realtimeClientEventResponseCancel.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$ResponseCancel(realtimeClientEventResponseCancel: $realtimeClientEventResponseCancel)'; } 
 }
@immutable final class RealtimeClientEvent$ResponseCreate extends RealtimeClientEvent {const RealtimeClientEvent$ResponseCreate(this.realtimeClientEventResponseCreate);

factory RealtimeClientEvent$ResponseCreate.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$ResponseCreate(RealtimeClientEventResponseCreate.fromJson(json)); }

final RealtimeClientEventResponseCreate realtimeClientEventResponseCreate;

@override String get type { return 'response.create'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventResponseCreate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$ResponseCreate && realtimeClientEventResponseCreate == other.realtimeClientEventResponseCreate; } 
@override int get hashCode { return realtimeClientEventResponseCreate.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$ResponseCreate(realtimeClientEventResponseCreate: $realtimeClientEventResponseCreate)'; } 
 }
@immutable final class RealtimeClientEvent$SessionUpdate extends RealtimeClientEvent {const RealtimeClientEvent$SessionUpdate(this.realtimeClientEventSessionUpdate);

factory RealtimeClientEvent$SessionUpdate.fromJson(Map<String, dynamic> json) { return RealtimeClientEvent$SessionUpdate(RealtimeClientEventSessionUpdate.fromJson(json)); }

final RealtimeClientEventSessionUpdate realtimeClientEventSessionUpdate;

@override String get type { return 'session.update'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventSessionUpdate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$SessionUpdate && realtimeClientEventSessionUpdate == other.realtimeClientEventSessionUpdate; } 
@override int get hashCode { return realtimeClientEventSessionUpdate.hashCode; } 
@override String toString() { return 'RealtimeClientEvent\$SessionUpdate(realtimeClientEventSessionUpdate: $realtimeClientEventSessionUpdate)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class RealtimeClientEvent$Unknown extends RealtimeClientEvent {const RealtimeClientEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'RealtimeClientEvent.unknown($json)'; } 
 }
