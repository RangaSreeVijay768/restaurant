// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_get_menu_item_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuGetMenuItemState {
  GetMenuItemResponse? get getMenuItemResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get getMenuItemStatus => throw _privateConstructorUsedError;
  String get menuItemId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMenuItemResponse? getMenuItemResponse,
            BooleanStatus getMenuItemStatus, String menuItemId)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMenuItemResponse? getMenuItemResponse,
            BooleanStatus getMenuItemStatus, String menuItemId)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMenuItemResponse? getMenuItemResponse,
            BooleanStatus getMenuItemStatus, String menuItemId)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuGetMenuItemStateCopyWith<MenuGetMenuItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuGetMenuItemStateCopyWith<$Res> {
  factory $MenuGetMenuItemStateCopyWith(MenuGetMenuItemState value,
          $Res Function(MenuGetMenuItemState) then) =
      _$MenuGetMenuItemStateCopyWithImpl<$Res, MenuGetMenuItemState>;
  @useResult
  $Res call(
      {GetMenuItemResponse? getMenuItemResponse,
      BooleanStatus getMenuItemStatus,
      String menuItemId});
}

/// @nodoc
class _$MenuGetMenuItemStateCopyWithImpl<$Res,
        $Val extends MenuGetMenuItemState>
    implements $MenuGetMenuItemStateCopyWith<$Res> {
  _$MenuGetMenuItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getMenuItemResponse = freezed,
    Object? getMenuItemStatus = null,
    Object? menuItemId = null,
  }) {
    return _then(_value.copyWith(
      getMenuItemResponse: freezed == getMenuItemResponse
          ? _value.getMenuItemResponse
          : getMenuItemResponse // ignore: cast_nullable_to_non_nullable
              as GetMenuItemResponse?,
      getMenuItemStatus: null == getMenuItemStatus
          ? _value.getMenuItemStatus
          : getMenuItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      menuItemId: null == menuItemId
          ? _value.menuItemId
          : menuItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MenuGetMenuItemStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetMenuItemResponse? getMenuItemResponse,
      BooleanStatus getMenuItemStatus,
      String menuItemId});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MenuGetMenuItemStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getMenuItemResponse = freezed,
    Object? getMenuItemStatus = null,
    Object? menuItemId = null,
  }) {
    return _then(_$InitialImpl(
      getMenuItemResponse: freezed == getMenuItemResponse
          ? _value.getMenuItemResponse
          : getMenuItemResponse // ignore: cast_nullable_to_non_nullable
              as GetMenuItemResponse?,
      getMenuItemStatus: null == getMenuItemStatus
          ? _value.getMenuItemStatus
          : getMenuItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
      menuItemId: null == menuItemId
          ? _value.menuItemId
          : menuItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getMenuItemResponse,
      this.getMenuItemStatus = BooleanStatus.initial,
      required this.menuItemId});

  @override
  final GetMenuItemResponse? getMenuItemResponse;
  @override
  @JsonKey()
  final BooleanStatus getMenuItemStatus;
  @override
  final String menuItemId;

  @override
  String toString() {
    return 'MenuGetMenuItemState.initial(getMenuItemResponse: $getMenuItemResponse, getMenuItemStatus: $getMenuItemStatus, menuItemId: $menuItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getMenuItemResponse, getMenuItemResponse) ||
                other.getMenuItemResponse == getMenuItemResponse) &&
            (identical(other.getMenuItemStatus, getMenuItemStatus) ||
                other.getMenuItemStatus == getMenuItemStatus) &&
            (identical(other.menuItemId, menuItemId) ||
                other.menuItemId == menuItemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, getMenuItemResponse, getMenuItemStatus, menuItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetMenuItemResponse? getMenuItemResponse,
            BooleanStatus getMenuItemStatus, String menuItemId)
        initial,
  }) {
    return initial(getMenuItemResponse, getMenuItemStatus, menuItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetMenuItemResponse? getMenuItemResponse,
            BooleanStatus getMenuItemStatus, String menuItemId)?
        initial,
  }) {
    return initial?.call(getMenuItemResponse, getMenuItemStatus, menuItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetMenuItemResponse? getMenuItemResponse,
            BooleanStatus getMenuItemStatus, String menuItemId)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(getMenuItemResponse, getMenuItemStatus, menuItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MenuGetMenuItemState {
  const factory _Initial(
      {final GetMenuItemResponse? getMenuItemResponse,
      final BooleanStatus getMenuItemStatus,
      required final String menuItemId}) = _$InitialImpl;

  @override
  GetMenuItemResponse? get getMenuItemResponse;
  @override
  BooleanStatus get getMenuItemStatus;
  @override
  String get menuItemId;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
