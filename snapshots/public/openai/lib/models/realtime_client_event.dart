// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_client_event_conversation_item_create.dart';import 'realtime_client_event_conversation_item_delete.dart';import 'realtime_client_event_conversation_item_retrieve.dart';import 'realtime_client_event_conversation_item_truncate.dart';import 'realtime_client_event_input_audio_buffer_append.dart';import 'realtime_client_event_input_audio_buffer_clear.dart';import 'realtime_client_event_input_audio_buffer_commit.dart';import 'realtime_client_event_output_audio_buffer_clear.dart';import 'realtime_client_event_response_cancel.dart';import 'realtime_client_event_response_create.dart';import 'realtime_client_event_session_update.dart';/// A realtime client event.
/// 
sealed class RealtimeClientEvent {const RealtimeClientEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeClientEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'conversation.item.create' => RealtimeClientEventConversationItemCreate.fromJson(json),
  'conversation.item.delete' => RealtimeClientEventConversationItemDelete.fromJson(json),
  'conversation.item.retrieve' => RealtimeClientEventConversationItemRetrieve.fromJson(json),
  'conversation.item.truncate' => RealtimeClientEventConversationItemTruncate.fromJson(json),
  'input_audio_buffer.append' => RealtimeClientEventInputAudioBufferAppend.fromJson(json),
  'input_audio_buffer.clear' => RealtimeClientEventInputAudioBufferClear.fromJson(json),
  'output_audio_buffer.clear' => RealtimeClientEventOutputAudioBufferClear.fromJson(json),
  'input_audio_buffer.commit' => RealtimeClientEventInputAudioBufferCommit.fromJson(json),
  'response.cancel' => RealtimeClientEventResponseCancel.fromJson(json),
  'response.create' => RealtimeClientEventResponseCreate.fromJson(json),
  'session.update' => RealtimeClientEventSessionUpdate.fromJson(json),
  _ => RealtimeClientEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeClientEvent$Unknown; } 
 }
@immutable final class RealtimeClientEventConversationItemCreate extends RealtimeClientEvent {const RealtimeClientEventConversationItemCreate(this.realtimeClientEventConversationItemCreate);

factory RealtimeClientEventConversationItemCreate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemCreate(RealtimeClientEventConversationItemCreate.fromJson(json)); }

final RealtimeClientEventConversationItemCreate realtimeClientEventConversationItemCreate;

@override String get type { return 'conversation.item.create'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemCreate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventConversationItemCreate && realtimeClientEventConversationItemCreate == other.realtimeClientEventConversationItemCreate; } 
@override int get hashCode { return realtimeClientEventConversationItemCreate.hashCode; } 
@override String toString() { return 'RealtimeClientEventConversationItemCreate(realtimeClientEventConversationItemCreate: $realtimeClientEventConversationItemCreate)'; } 
 }
@immutable final class RealtimeClientEventConversationItemDelete extends RealtimeClientEvent {const RealtimeClientEventConversationItemDelete(this.realtimeClientEventConversationItemDelete);

factory RealtimeClientEventConversationItemDelete.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemDelete(RealtimeClientEventConversationItemDelete.fromJson(json)); }

final RealtimeClientEventConversationItemDelete realtimeClientEventConversationItemDelete;

@override String get type { return 'conversation.item.delete'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemDelete.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventConversationItemDelete && realtimeClientEventConversationItemDelete == other.realtimeClientEventConversationItemDelete; } 
@override int get hashCode { return realtimeClientEventConversationItemDelete.hashCode; } 
@override String toString() { return 'RealtimeClientEventConversationItemDelete(realtimeClientEventConversationItemDelete: $realtimeClientEventConversationItemDelete)'; } 
 }
@immutable final class RealtimeClientEventConversationItemRetrieve extends RealtimeClientEvent {const RealtimeClientEventConversationItemRetrieve(this.realtimeClientEventConversationItemRetrieve);

factory RealtimeClientEventConversationItemRetrieve.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemRetrieve(RealtimeClientEventConversationItemRetrieve.fromJson(json)); }

final RealtimeClientEventConversationItemRetrieve realtimeClientEventConversationItemRetrieve;

@override String get type { return 'conversation.item.retrieve'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemRetrieve.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventConversationItemRetrieve && realtimeClientEventConversationItemRetrieve == other.realtimeClientEventConversationItemRetrieve; } 
@override int get hashCode { return realtimeClientEventConversationItemRetrieve.hashCode; } 
@override String toString() { return 'RealtimeClientEventConversationItemRetrieve(realtimeClientEventConversationItemRetrieve: $realtimeClientEventConversationItemRetrieve)'; } 
 }
@immutable final class RealtimeClientEventConversationItemTruncate extends RealtimeClientEvent {const RealtimeClientEventConversationItemTruncate(this.realtimeClientEventConversationItemTruncate);

factory RealtimeClientEventConversationItemTruncate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemTruncate(RealtimeClientEventConversationItemTruncate.fromJson(json)); }

final RealtimeClientEventConversationItemTruncate realtimeClientEventConversationItemTruncate;

@override String get type { return 'conversation.item.truncate'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventConversationItemTruncate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventConversationItemTruncate && realtimeClientEventConversationItemTruncate == other.realtimeClientEventConversationItemTruncate; } 
@override int get hashCode { return realtimeClientEventConversationItemTruncate.hashCode; } 
@override String toString() { return 'RealtimeClientEventConversationItemTruncate(realtimeClientEventConversationItemTruncate: $realtimeClientEventConversationItemTruncate)'; } 
 }
@immutable final class RealtimeClientEventInputAudioBufferAppend extends RealtimeClientEvent {const RealtimeClientEventInputAudioBufferAppend(this.realtimeClientEventInputAudioBufferAppend);

factory RealtimeClientEventInputAudioBufferAppend.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferAppend(RealtimeClientEventInputAudioBufferAppend.fromJson(json)); }

final RealtimeClientEventInputAudioBufferAppend realtimeClientEventInputAudioBufferAppend;

@override String get type { return 'input_audio_buffer.append'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventInputAudioBufferAppend.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventInputAudioBufferAppend && realtimeClientEventInputAudioBufferAppend == other.realtimeClientEventInputAudioBufferAppend; } 
@override int get hashCode { return realtimeClientEventInputAudioBufferAppend.hashCode; } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferAppend(realtimeClientEventInputAudioBufferAppend: $realtimeClientEventInputAudioBufferAppend)'; } 
 }
@immutable final class RealtimeClientEventInputAudioBufferClear extends RealtimeClientEvent {const RealtimeClientEventInputAudioBufferClear(this.realtimeClientEventInputAudioBufferClear);

factory RealtimeClientEventInputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferClear(RealtimeClientEventInputAudioBufferClear.fromJson(json)); }

final RealtimeClientEventInputAudioBufferClear realtimeClientEventInputAudioBufferClear;

@override String get type { return 'input_audio_buffer.clear'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventInputAudioBufferClear.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventInputAudioBufferClear && realtimeClientEventInputAudioBufferClear == other.realtimeClientEventInputAudioBufferClear; } 
@override int get hashCode { return realtimeClientEventInputAudioBufferClear.hashCode; } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferClear(realtimeClientEventInputAudioBufferClear: $realtimeClientEventInputAudioBufferClear)'; } 
 }
@immutable final class RealtimeClientEventOutputAudioBufferClear extends RealtimeClientEvent {const RealtimeClientEventOutputAudioBufferClear(this.realtimeClientEventOutputAudioBufferClear);

factory RealtimeClientEventOutputAudioBufferClear.fromJson(Map<String, dynamic> json) { return RealtimeClientEventOutputAudioBufferClear(RealtimeClientEventOutputAudioBufferClear.fromJson(json)); }

final RealtimeClientEventOutputAudioBufferClear realtimeClientEventOutputAudioBufferClear;

@override String get type { return 'output_audio_buffer.clear'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventOutputAudioBufferClear.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventOutputAudioBufferClear && realtimeClientEventOutputAudioBufferClear == other.realtimeClientEventOutputAudioBufferClear; } 
@override int get hashCode { return realtimeClientEventOutputAudioBufferClear.hashCode; } 
@override String toString() { return 'RealtimeClientEventOutputAudioBufferClear(realtimeClientEventOutputAudioBufferClear: $realtimeClientEventOutputAudioBufferClear)'; } 
 }
@immutable final class RealtimeClientEventInputAudioBufferCommit extends RealtimeClientEvent {const RealtimeClientEventInputAudioBufferCommit(this.realtimeClientEventInputAudioBufferCommit);

factory RealtimeClientEventInputAudioBufferCommit.fromJson(Map<String, dynamic> json) { return RealtimeClientEventInputAudioBufferCommit(RealtimeClientEventInputAudioBufferCommit.fromJson(json)); }

final RealtimeClientEventInputAudioBufferCommit realtimeClientEventInputAudioBufferCommit;

@override String get type { return 'input_audio_buffer.commit'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventInputAudioBufferCommit.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventInputAudioBufferCommit && realtimeClientEventInputAudioBufferCommit == other.realtimeClientEventInputAudioBufferCommit; } 
@override int get hashCode { return realtimeClientEventInputAudioBufferCommit.hashCode; } 
@override String toString() { return 'RealtimeClientEventInputAudioBufferCommit(realtimeClientEventInputAudioBufferCommit: $realtimeClientEventInputAudioBufferCommit)'; } 
 }
@immutable final class RealtimeClientEventResponseCancel extends RealtimeClientEvent {const RealtimeClientEventResponseCancel(this.realtimeClientEventResponseCancel);

factory RealtimeClientEventResponseCancel.fromJson(Map<String, dynamic> json) { return RealtimeClientEventResponseCancel(RealtimeClientEventResponseCancel.fromJson(json)); }

final RealtimeClientEventResponseCancel realtimeClientEventResponseCancel;

@override String get type { return 'response.cancel'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventResponseCancel.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventResponseCancel && realtimeClientEventResponseCancel == other.realtimeClientEventResponseCancel; } 
@override int get hashCode { return realtimeClientEventResponseCancel.hashCode; } 
@override String toString() { return 'RealtimeClientEventResponseCancel(realtimeClientEventResponseCancel: $realtimeClientEventResponseCancel)'; } 
 }
@immutable final class RealtimeClientEventResponseCreate extends RealtimeClientEvent {const RealtimeClientEventResponseCreate(this.realtimeClientEventResponseCreate);

factory RealtimeClientEventResponseCreate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventResponseCreate(RealtimeClientEventResponseCreate.fromJson(json)); }

final RealtimeClientEventResponseCreate realtimeClientEventResponseCreate;

@override String get type { return 'response.create'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventResponseCreate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventResponseCreate && realtimeClientEventResponseCreate == other.realtimeClientEventResponseCreate; } 
@override int get hashCode { return realtimeClientEventResponseCreate.hashCode; } 
@override String toString() { return 'RealtimeClientEventResponseCreate(realtimeClientEventResponseCreate: $realtimeClientEventResponseCreate)'; } 
 }
@immutable final class RealtimeClientEventSessionUpdate extends RealtimeClientEvent {const RealtimeClientEventSessionUpdate(this.realtimeClientEventSessionUpdate);

factory RealtimeClientEventSessionUpdate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventSessionUpdate(RealtimeClientEventSessionUpdate.fromJson(json)); }

final RealtimeClientEventSessionUpdate realtimeClientEventSessionUpdate;

@override String get type { return 'session.update'; } 
@override Map<String, dynamic> toJson() { return {...realtimeClientEventSessionUpdate.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventSessionUpdate && realtimeClientEventSessionUpdate == other.realtimeClientEventSessionUpdate; } 
@override int get hashCode { return realtimeClientEventSessionUpdate.hashCode; } 
@override String toString() { return 'RealtimeClientEventSessionUpdate(realtimeClientEventSessionUpdate: $realtimeClientEventSessionUpdate)'; } 
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
