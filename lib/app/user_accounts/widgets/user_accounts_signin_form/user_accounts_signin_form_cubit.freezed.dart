// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_accounts_signin_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAccountsSigninFormState {
  ControlStatus get formValid => throw _privateConstructorUsedError;
  SignInResponse? get signInResponse => throw _privateConstructorUsedError;
  BooleanStatus get signInStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid,
            SignInResponse? signInResponse, BooleanStatus signInStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid, SignInResponse? signInResponse,
            BooleanStatus signInStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid, SignInResponse? signInResponse,
            BooleanStatus signInStatus)?
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
  $UserAccountsSigninFormStateCopyWith<UserAccountsSigninFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountsSigninFormStateCopyWith<$Res> {
  factory $UserAccountsSigninFormStateCopyWith(
          UserAccountsSigninFormState value,
          $Res Function(UserAccountsSigninFormState) then) =
      _$UserAccountsSigninFormStateCopyWithImpl<$Res,
          UserAccountsSigninFormState>;
  @useResult
  $Res call(
      {ControlStatus formValid,
      SignInResponse? signInResponse,
      BooleanStatus signInStatus});
}

/// @nodoc
class _$UserAccountsSigninFormStateCopyWithImpl<$Res,
        $Val extends UserAccountsSigninFormState>
    implements $UserAccountsSigninFormStateCopyWith<$Res> {
  _$UserAccountsSigninFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? signInResponse = freezed,
    Object? signInStatus = null,
  }) {
    return _then(_value.copyWith(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      signInResponse: freezed == signInResponse
          ? _value.signInResponse
          : signInResponse // ignore: cast_nullable_to_non_nullable
              as SignInResponse?,
      signInStatus: null == signInStatus
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UserAccountsSigninFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ControlStatus formValid,
      SignInResponse? signInResponse,
      BooleanStatus signInStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserAccountsSigninFormStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? signInResponse = freezed,
    Object? signInStatus = null,
  }) {
    return _then(_$InitialImpl(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      signInResponse: freezed == signInResponse
          ? _value.signInResponse
          : signInResponse // ignore: cast_nullable_to_non_nullable
              as SignInResponse?,
      signInStatus: null == signInStatus
          ? _value.signInStatus
          : signInStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.formValid = ControlStatus.pending,
      this.signInResponse,
      this.signInStatus = BooleanStatus.initial});

  @override
  @JsonKey()
  final ControlStatus formValid;
  @override
  final SignInResponse? signInResponse;
  @override
  @JsonKey()
  final BooleanStatus signInStatus;

  @override
  String toString() {
    return 'UserAccountsSigninFormState.initial(formValid: $formValid, signInResponse: $signInResponse, signInStatus: $signInStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid) &&
            (identical(other.signInResponse, signInResponse) ||
                other.signInResponse == signInResponse) &&
            (identical(other.signInStatus, signInStatus) ||
                other.signInStatus == signInStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formValid, signInResponse, signInStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid,
            SignInResponse? signInResponse, BooleanStatus signInStatus)
        initial,
  }) {
    return initial(formValid, signInResponse, signInStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid, SignInResponse? signInResponse,
            BooleanStatus signInStatus)?
        initial,
  }) {
    return initial?.call(formValid, signInResponse, signInStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid, SignInResponse? signInResponse,
            BooleanStatus signInStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(formValid, signInResponse, signInStatus);
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

abstract class _Initial implements UserAccountsSigninFormState {
  const factory _Initial(
      {final ControlStatus formValid,
      final SignInResponse? signInResponse,
      final BooleanStatus signInStatus}) = _$InitialImpl;

  @override
  ControlStatus get formValid;
  @override
  SignInResponse? get signInResponse;
  @override
  BooleanStatus get signInStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
