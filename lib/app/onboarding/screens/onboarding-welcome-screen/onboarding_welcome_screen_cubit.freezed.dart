// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_welcome_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingWelcomeScreenState {
  AuthenticationState? get authenticationState =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationState? authenticationState) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationState? authenticationState)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationState? authenticationState)? initial,
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
  $OnboardingWelcomeScreenStateCopyWith<OnboardingWelcomeScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingWelcomeScreenStateCopyWith<$Res> {
  factory $OnboardingWelcomeScreenStateCopyWith(
          OnboardingWelcomeScreenState value,
          $Res Function(OnboardingWelcomeScreenState) then) =
      _$OnboardingWelcomeScreenStateCopyWithImpl<$Res,
          OnboardingWelcomeScreenState>;
  @useResult
  $Res call({AuthenticationState? authenticationState});

  $AuthenticationStateCopyWith<$Res>? get authenticationState;
}

/// @nodoc
class _$OnboardingWelcomeScreenStateCopyWithImpl<$Res,
        $Val extends OnboardingWelcomeScreenState>
    implements $OnboardingWelcomeScreenStateCopyWith<$Res> {
  _$OnboardingWelcomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationState = freezed,
  }) {
    return _then(_value.copyWith(
      authenticationState: freezed == authenticationState
          ? _value.authenticationState
          : authenticationState // ignore: cast_nullable_to_non_nullable
              as AuthenticationState?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationStateCopyWith<$Res>? get authenticationState {
    if (_value.authenticationState == null) {
      return null;
    }

    return $AuthenticationStateCopyWith<$Res>(_value.authenticationState!,
        (value) {
      return _then(_value.copyWith(authenticationState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OnboardingWelcomeScreenStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationState? authenticationState});

  @override
  $AuthenticationStateCopyWith<$Res>? get authenticationState;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OnboardingWelcomeScreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationState = freezed,
  }) {
    return _then(_$InitialImpl(
      authenticationState: freezed == authenticationState
          ? _value.authenticationState
          : authenticationState // ignore: cast_nullable_to_non_nullable
              as AuthenticationState?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.authenticationState});

  @override
  final AuthenticationState? authenticationState;

  @override
  String toString() {
    return 'OnboardingWelcomeScreenState.initial(authenticationState: $authenticationState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.authenticationState, authenticationState) ||
                other.authenticationState == authenticationState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticationState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationState? authenticationState) initial,
  }) {
    return initial(authenticationState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationState? authenticationState)? initial,
  }) {
    return initial?.call(authenticationState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationState? authenticationState)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(authenticationState);
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

abstract class _Initial implements OnboardingWelcomeScreenState {
  const factory _Initial({final AuthenticationState? authenticationState}) =
      _$InitialImpl;

  @override
  AuthenticationState? get authenticationState;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
