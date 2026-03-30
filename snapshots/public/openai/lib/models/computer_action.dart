// GENERATED CODE - DO NOT MODIFY BY HAND

import 'click_param.dart';import 'double_click_action.dart';import 'drag_param.dart';import 'key_press_action.dart';import 'move_param.dart';import 'screenshot_param.dart';import 'scroll_param.dart';import 'type_param.dart';import 'wait_param.dart';sealed class ComputerAction {const ComputerAction();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ComputerAction.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'ClickParam' => ComputerActionClickParam.fromJson(json),
  'DoubleClickAction' => ComputerActionDoubleClickAction.fromJson(json),
  'DragParam' => ComputerActionDragParam.fromJson(json),
  'KeyPressAction' => ComputerActionKeyPressAction.fromJson(json),
  'MoveParam' => ComputerActionMoveParam.fromJson(json),
  'ScreenshotParam' => ComputerActionScreenshotParam.fromJson(json),
  'ScrollParam' => ComputerActionScrollParam.fromJson(json),
  'TypeParam' => ComputerActionTypeParam.fromJson(json),
  'WaitParam' => ComputerActionWaitParam.fromJson(json),
  _ => ComputerAction$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ComputerAction$Unknown; } 
 }
final class ComputerActionClickParam extends ComputerAction {const ComputerActionClickParam(this.clickParam);

factory ComputerActionClickParam.fromJson(Map<String, dynamic> json) { return ComputerActionClickParam(ClickParam.fromJson(json)); }

final ClickParam clickParam;

@override String get type { return 'ClickParam'; } 
@override Map<String, dynamic> toJson() { return {...clickParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionClickParam && clickParam == other.clickParam; } 
@override int get hashCode { return clickParam.hashCode; } 
@override String toString() { return 'ComputerActionClickParam(clickParam: $clickParam)'; } 
 }
final class ComputerActionDoubleClickAction extends ComputerAction {const ComputerActionDoubleClickAction(this.doubleClickAction);

factory ComputerActionDoubleClickAction.fromJson(Map<String, dynamic> json) { return ComputerActionDoubleClickAction(DoubleClickAction.fromJson(json)); }

final DoubleClickAction doubleClickAction;

@override String get type { return 'DoubleClickAction'; } 
@override Map<String, dynamic> toJson() { return {...doubleClickAction.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionDoubleClickAction && doubleClickAction == other.doubleClickAction; } 
@override int get hashCode { return doubleClickAction.hashCode; } 
@override String toString() { return 'ComputerActionDoubleClickAction(doubleClickAction: $doubleClickAction)'; } 
 }
final class ComputerActionDragParam extends ComputerAction {const ComputerActionDragParam(this.dragParam);

factory ComputerActionDragParam.fromJson(Map<String, dynamic> json) { return ComputerActionDragParam(DragParam.fromJson(json)); }

final DragParam dragParam;

@override String get type { return 'DragParam'; } 
@override Map<String, dynamic> toJson() { return {...dragParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionDragParam && dragParam == other.dragParam; } 
@override int get hashCode { return dragParam.hashCode; } 
@override String toString() { return 'ComputerActionDragParam(dragParam: $dragParam)'; } 
 }
final class ComputerActionKeyPressAction extends ComputerAction {const ComputerActionKeyPressAction(this.keyPressAction);

factory ComputerActionKeyPressAction.fromJson(Map<String, dynamic> json) { return ComputerActionKeyPressAction(KeyPressAction.fromJson(json)); }

final KeyPressAction keyPressAction;

@override String get type { return 'KeyPressAction'; } 
@override Map<String, dynamic> toJson() { return {...keyPressAction.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionKeyPressAction && keyPressAction == other.keyPressAction; } 
@override int get hashCode { return keyPressAction.hashCode; } 
@override String toString() { return 'ComputerActionKeyPressAction(keyPressAction: $keyPressAction)'; } 
 }
final class ComputerActionMoveParam extends ComputerAction {const ComputerActionMoveParam(this.moveParam);

factory ComputerActionMoveParam.fromJson(Map<String, dynamic> json) { return ComputerActionMoveParam(MoveParam.fromJson(json)); }

final MoveParam moveParam;

@override String get type { return 'MoveParam'; } 
@override Map<String, dynamic> toJson() { return {...moveParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionMoveParam && moveParam == other.moveParam; } 
@override int get hashCode { return moveParam.hashCode; } 
@override String toString() { return 'ComputerActionMoveParam(moveParam: $moveParam)'; } 
 }
final class ComputerActionScreenshotParam extends ComputerAction {const ComputerActionScreenshotParam(this.screenshotParam);

factory ComputerActionScreenshotParam.fromJson(Map<String, dynamic> json) { return ComputerActionScreenshotParam(ScreenshotParam.fromJson(json)); }

final ScreenshotParam screenshotParam;

@override String get type { return 'ScreenshotParam'; } 
@override Map<String, dynamic> toJson() { return {...screenshotParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionScreenshotParam && screenshotParam == other.screenshotParam; } 
@override int get hashCode { return screenshotParam.hashCode; } 
@override String toString() { return 'ComputerActionScreenshotParam(screenshotParam: $screenshotParam)'; } 
 }
final class ComputerActionScrollParam extends ComputerAction {const ComputerActionScrollParam(this.scrollParam);

factory ComputerActionScrollParam.fromJson(Map<String, dynamic> json) { return ComputerActionScrollParam(ScrollParam.fromJson(json)); }

final ScrollParam scrollParam;

@override String get type { return 'ScrollParam'; } 
@override Map<String, dynamic> toJson() { return {...scrollParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionScrollParam && scrollParam == other.scrollParam; } 
@override int get hashCode { return scrollParam.hashCode; } 
@override String toString() { return 'ComputerActionScrollParam(scrollParam: $scrollParam)'; } 
 }
final class ComputerActionTypeParam extends ComputerAction {const ComputerActionTypeParam(this.typeParam);

factory ComputerActionTypeParam.fromJson(Map<String, dynamic> json) { return ComputerActionTypeParam(TypeParam.fromJson(json)); }

final TypeParam typeParam;

@override String get type { return 'TypeParam'; } 
@override Map<String, dynamic> toJson() { return {...typeParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionTypeParam && typeParam == other.typeParam; } 
@override int get hashCode { return typeParam.hashCode; } 
@override String toString() { return 'ComputerActionTypeParam(typeParam: $typeParam)'; } 
 }
final class ComputerActionWaitParam extends ComputerAction {const ComputerActionWaitParam(this.waitParam);

factory ComputerActionWaitParam.fromJson(Map<String, dynamic> json) { return ComputerActionWaitParam(WaitParam.fromJson(json)); }

final WaitParam waitParam;

@override String get type { return 'WaitParam'; } 
@override Map<String, dynamic> toJson() { return {...waitParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionWaitParam && waitParam == other.waitParam; } 
@override int get hashCode { return waitParam.hashCode; } 
@override String toString() { return 'ComputerActionWaitParam(waitParam: $waitParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ComputerAction$Unknown extends ComputerAction {const ComputerAction$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerAction$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ComputerAction.unknown($json)'; } 
 }
