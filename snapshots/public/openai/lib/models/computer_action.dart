// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'click_param.dart';import 'double_click_action.dart';import 'drag_param.dart';import 'key_press_action.dart';import 'move_param.dart';import 'screenshot_param.dart';import 'scroll_param.dart';import 'type_param.dart';import 'wait_param.dart';sealed class ComputerAction {const ComputerAction();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ComputerAction.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'click' => ComputerActionClick.fromJson(json),
  'double_click' => ComputerActionDoubleClick.fromJson(json),
  'drag' => ComputerActionDrag.fromJson(json),
  'keypress' => ComputerActionKeypress.fromJson(json),
  'move' => ComputerActionMove.fromJson(json),
  'screenshot' => ComputerActionScreenshot.fromJson(json),
  'scroll' => ComputerActionScroll.fromJson(json),
  'type' => ComputerActionType.fromJson(json),
  'wait' => ComputerActionWait.fromJson(json),
  _ => ComputerAction$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ComputerAction$Unknown; } 
 }
@immutable final class ComputerActionClick extends ComputerAction {const ComputerActionClick(this.clickParam);

factory ComputerActionClick.fromJson(Map<String, dynamic> json) { return ComputerActionClick(ClickParam.fromJson(json)); }

final ClickParam clickParam;

@override String get type { return 'click'; } 
@override Map<String, dynamic> toJson() { return {...clickParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionClick && clickParam == other.clickParam; } 
@override int get hashCode { return clickParam.hashCode; } 
@override String toString() { return 'ComputerActionClick(clickParam: $clickParam)'; } 
 }
@immutable final class ComputerActionDoubleClick extends ComputerAction {const ComputerActionDoubleClick(this.doubleClickAction);

factory ComputerActionDoubleClick.fromJson(Map<String, dynamic> json) { return ComputerActionDoubleClick(DoubleClickAction.fromJson(json)); }

final DoubleClickAction doubleClickAction;

@override String get type { return 'double_click'; } 
@override Map<String, dynamic> toJson() { return {...doubleClickAction.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionDoubleClick && doubleClickAction == other.doubleClickAction; } 
@override int get hashCode { return doubleClickAction.hashCode; } 
@override String toString() { return 'ComputerActionDoubleClick(doubleClickAction: $doubleClickAction)'; } 
 }
@immutable final class ComputerActionDrag extends ComputerAction {const ComputerActionDrag(this.dragParam);

factory ComputerActionDrag.fromJson(Map<String, dynamic> json) { return ComputerActionDrag(DragParam.fromJson(json)); }

final DragParam dragParam;

@override String get type { return 'drag'; } 
@override Map<String, dynamic> toJson() { return {...dragParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionDrag && dragParam == other.dragParam; } 
@override int get hashCode { return dragParam.hashCode; } 
@override String toString() { return 'ComputerActionDrag(dragParam: $dragParam)'; } 
 }
@immutable final class ComputerActionKeypress extends ComputerAction {const ComputerActionKeypress(this.keyPressAction);

factory ComputerActionKeypress.fromJson(Map<String, dynamic> json) { return ComputerActionKeypress(KeyPressAction.fromJson(json)); }

final KeyPressAction keyPressAction;

@override String get type { return 'keypress'; } 
@override Map<String, dynamic> toJson() { return {...keyPressAction.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionKeypress && keyPressAction == other.keyPressAction; } 
@override int get hashCode { return keyPressAction.hashCode; } 
@override String toString() { return 'ComputerActionKeypress(keyPressAction: $keyPressAction)'; } 
 }
@immutable final class ComputerActionMove extends ComputerAction {const ComputerActionMove(this.moveParam);

factory ComputerActionMove.fromJson(Map<String, dynamic> json) { return ComputerActionMove(MoveParam.fromJson(json)); }

final MoveParam moveParam;

@override String get type { return 'move'; } 
@override Map<String, dynamic> toJson() { return {...moveParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionMove && moveParam == other.moveParam; } 
@override int get hashCode { return moveParam.hashCode; } 
@override String toString() { return 'ComputerActionMove(moveParam: $moveParam)'; } 
 }
@immutable final class ComputerActionScreenshot extends ComputerAction {const ComputerActionScreenshot(this.screenshotParam);

factory ComputerActionScreenshot.fromJson(Map<String, dynamic> json) { return ComputerActionScreenshot(ScreenshotParam.fromJson(json)); }

final ScreenshotParam screenshotParam;

@override String get type { return 'screenshot'; } 
@override Map<String, dynamic> toJson() { return {...screenshotParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionScreenshot && screenshotParam == other.screenshotParam; } 
@override int get hashCode { return screenshotParam.hashCode; } 
@override String toString() { return 'ComputerActionScreenshot(screenshotParam: $screenshotParam)'; } 
 }
@immutable final class ComputerActionScroll extends ComputerAction {const ComputerActionScroll(this.scrollParam);

factory ComputerActionScroll.fromJson(Map<String, dynamic> json) { return ComputerActionScroll(ScrollParam.fromJson(json)); }

final ScrollParam scrollParam;

@override String get type { return 'scroll'; } 
@override Map<String, dynamic> toJson() { return {...scrollParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionScroll && scrollParam == other.scrollParam; } 
@override int get hashCode { return scrollParam.hashCode; } 
@override String toString() { return 'ComputerActionScroll(scrollParam: $scrollParam)'; } 
 }
@immutable final class ComputerActionType extends ComputerAction {const ComputerActionType(this.typeParam);

factory ComputerActionType.fromJson(Map<String, dynamic> json) { return ComputerActionType(TypeParam.fromJson(json)); }

final TypeParam typeParam;

@override String get type { return 'type'; } 
@override Map<String, dynamic> toJson() { return {...typeParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionType && typeParam == other.typeParam; } 
@override int get hashCode { return typeParam.hashCode; } 
@override String toString() { return 'ComputerActionType(typeParam: $typeParam)'; } 
 }
@immutable final class ComputerActionWait extends ComputerAction {const ComputerActionWait(this.waitParam);

factory ComputerActionWait.fromJson(Map<String, dynamic> json) { return ComputerActionWait(WaitParam.fromJson(json)); }

final WaitParam waitParam;

@override String get type { return 'wait'; } 
@override Map<String, dynamic> toJson() { return {...waitParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerActionWait && waitParam == other.waitParam; } 
@override int get hashCode { return waitParam.hashCode; } 
@override String toString() { return 'ComputerActionWait(waitParam: $waitParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ComputerAction$Unknown extends ComputerAction {const ComputerAction$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ComputerAction$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ComputerAction.unknown($json)'; } 
 }
