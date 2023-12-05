// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileState {
  UploadFileResponse? get uploadFileResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get uploadFileStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadFileResponse? uploadFileResponse,
            BooleanStatus uploadFileStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadFileResponse? uploadFileResponse,
            BooleanStatus uploadFileStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadFileResponse? uploadFileResponse,
            BooleanStatus uploadFileStatus)?
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
  $UploadFileStateCopyWith<UploadFileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileStateCopyWith<$Res> {
  factory $UploadFileStateCopyWith(
          UploadFileState value, $Res Function(UploadFileState) then) =
      _$UploadFileStateCopyWithImpl<$Res, UploadFileState>;
  @useResult
  $Res call(
      {UploadFileResponse? uploadFileResponse, BooleanStatus uploadFileStatus});
}

/// @nodoc
class _$UploadFileStateCopyWithImpl<$Res, $Val extends UploadFileState>
    implements $UploadFileStateCopyWith<$Res> {
  _$UploadFileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadFileResponse = freezed,
    Object? uploadFileStatus = null,
  }) {
    return _then(_value.copyWith(
      uploadFileResponse: freezed == uploadFileResponse
          ? _value.uploadFileResponse
          : uploadFileResponse // ignore: cast_nullable_to_non_nullable
              as UploadFileResponse?,
      uploadFileStatus: null == uploadFileStatus
          ? _value.uploadFileStatus
          : uploadFileStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UploadFileStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UploadFileResponse? uploadFileResponse, BooleanStatus uploadFileStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UploadFileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadFileResponse = freezed,
    Object? uploadFileStatus = null,
  }) {
    return _then(_$InitialImpl(
      uploadFileResponse: freezed == uploadFileResponse
          ? _value.uploadFileResponse
          : uploadFileResponse // ignore: cast_nullable_to_non_nullable
              as UploadFileResponse?,
      uploadFileStatus: null == uploadFileStatus
          ? _value.uploadFileStatus
          : uploadFileStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.uploadFileResponse, this.uploadFileStatus = BooleanStatus.initial});

  @override
  final UploadFileResponse? uploadFileResponse;
  @override
  @JsonKey()
  final BooleanStatus uploadFileStatus;

  @override
  String toString() {
    return 'UploadFileState.initial(uploadFileResponse: $uploadFileResponse, uploadFileStatus: $uploadFileStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.uploadFileResponse, uploadFileResponse) ||
                other.uploadFileResponse == uploadFileResponse) &&
            (identical(other.uploadFileStatus, uploadFileStatus) ||
                other.uploadFileStatus == uploadFileStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, uploadFileResponse, uploadFileStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UploadFileResponse? uploadFileResponse,
            BooleanStatus uploadFileStatus)
        initial,
  }) {
    return initial(uploadFileResponse, uploadFileStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UploadFileResponse? uploadFileResponse,
            BooleanStatus uploadFileStatus)?
        initial,
  }) {
    return initial?.call(uploadFileResponse, uploadFileStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UploadFileResponse? uploadFileResponse,
            BooleanStatus uploadFileStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(uploadFileResponse, uploadFileStatus);
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

abstract class _Initial implements UploadFileState {
  const factory _Initial(
      {final UploadFileResponse? uploadFileResponse,
      final BooleanStatus uploadFileStatus}) = _$InitialImpl;

  @override
  UploadFileResponse? get uploadFileResponse;
  @override
  BooleanStatus get uploadFileStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
