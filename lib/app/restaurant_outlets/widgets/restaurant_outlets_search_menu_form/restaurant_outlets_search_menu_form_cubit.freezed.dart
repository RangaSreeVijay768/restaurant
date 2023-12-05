// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_outlets_search_menu_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantOutletsSearchMenuFormState {
  ControlStatus get formValid => throw _privateConstructorUsedError;
  String? get filterMenuItemName => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid,
            String? filterMenuItemName, String? searchText)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid, String? filterMenuItemName,
            String? searchText)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid, String? filterMenuItemName,
            String? searchText)?
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
  $RestaurantOutletsSearchMenuFormStateCopyWith<
          RestaurantOutletsSearchMenuFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantOutletsSearchMenuFormStateCopyWith<$Res> {
  factory $RestaurantOutletsSearchMenuFormStateCopyWith(
          RestaurantOutletsSearchMenuFormState value,
          $Res Function(RestaurantOutletsSearchMenuFormState) then) =
      _$RestaurantOutletsSearchMenuFormStateCopyWithImpl<$Res,
          RestaurantOutletsSearchMenuFormState>;
  @useResult
  $Res call(
      {ControlStatus formValid,
      String? filterMenuItemName,
      String? searchText});
}

/// @nodoc
class _$RestaurantOutletsSearchMenuFormStateCopyWithImpl<$Res,
        $Val extends RestaurantOutletsSearchMenuFormState>
    implements $RestaurantOutletsSearchMenuFormStateCopyWith<$Res> {
  _$RestaurantOutletsSearchMenuFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? filterMenuItemName = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_value.copyWith(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      filterMenuItemName: freezed == filterMenuItemName
          ? _value.filterMenuItemName
          : filterMenuItemName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RestaurantOutletsSearchMenuFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ControlStatus formValid,
      String? filterMenuItemName,
      String? searchText});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RestaurantOutletsSearchMenuFormStateCopyWithImpl<$Res,
        _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? filterMenuItemName = freezed,
    Object? searchText = freezed,
  }) {
    return _then(_$InitialImpl(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      filterMenuItemName: freezed == filterMenuItemName
          ? _value.filterMenuItemName
          : filterMenuItemName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.formValid = ControlStatus.pending,
      this.filterMenuItemName,
      this.searchText});

  @override
  @JsonKey()
  final ControlStatus formValid;
  @override
  final String? filterMenuItemName;
  @override
  final String? searchText;

  @override
  String toString() {
    return 'RestaurantOutletsSearchMenuFormState.initial(formValid: $formValid, filterMenuItemName: $filterMenuItemName, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid) &&
            (identical(other.filterMenuItemName, filterMenuItemName) ||
                other.filterMenuItemName == filterMenuItemName) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formValid, filterMenuItemName, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid,
            String? filterMenuItemName, String? searchText)
        initial,
  }) {
    return initial(formValid, filterMenuItemName, searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid, String? filterMenuItemName,
            String? searchText)?
        initial,
  }) {
    return initial?.call(formValid, filterMenuItemName, searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid, String? filterMenuItemName,
            String? searchText)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(formValid, filterMenuItemName, searchText);
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

abstract class _Initial implements RestaurantOutletsSearchMenuFormState {
  const factory _Initial(
      {final ControlStatus formValid,
      final String? filterMenuItemName,
      final String? searchText}) = _$InitialImpl;

  @override
  ControlStatus get formValid;
  @override
  String? get filterMenuItemName;
  @override
  String? get searchText;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
