// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _SurahsLoading value)?  surahsLoading,TResult Function( _SurahsSuccess value)?  surahsSuccess,TResult Function( _SurahsError value)?  surahsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SurahsLoading() when surahsLoading != null:
return surahsLoading(_that);case _SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that);case _SurahsError() when surahsError != null:
return surahsError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _SurahsLoading value)  surahsLoading,required TResult Function( _SurahsSuccess value)  surahsSuccess,required TResult Function( _SurahsError value)  surahsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SurahsLoading():
return surahsLoading(_that);case _SurahsSuccess():
return surahsSuccess(_that);case _SurahsError():
return surahsError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _SurahsLoading value)?  surahsLoading,TResult? Function( _SurahsSuccess value)?  surahsSuccess,TResult? Function( _SurahsError value)?  surahsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SurahsLoading() when surahsLoading != null:
return surahsLoading(_that);case _SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that);case _SurahsError() when surahsError != null:
return surahsError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  surahsLoading,TResult Function( SurahsResponseModel surahsResponseModel)?  surahsSuccess,TResult Function( ApiErrorModel apiErrorModel)?  surahsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SurahsLoading() when surahsLoading != null:
return surahsLoading();case _SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that.surahsResponseModel);case _SurahsError() when surahsError != null:
return surahsError(_that.apiErrorModel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  surahsLoading,required TResult Function( SurahsResponseModel surahsResponseModel)  surahsSuccess,required TResult Function( ApiErrorModel apiErrorModel)  surahsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SurahsLoading():
return surahsLoading();case _SurahsSuccess():
return surahsSuccess(_that.surahsResponseModel);case _SurahsError():
return surahsError(_that.apiErrorModel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  surahsLoading,TResult? Function( SurahsResponseModel surahsResponseModel)?  surahsSuccess,TResult? Function( ApiErrorModel apiErrorModel)?  surahsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SurahsLoading() when surahsLoading != null:
return surahsLoading();case _SurahsSuccess() when surahsSuccess != null:
return surahsSuccess(_that.surahsResponseModel);case _SurahsError() when surahsError != null:
return surahsError(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _SurahsLoading implements HomeState {
  const _SurahsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.surahsLoading()';
}


}




/// @nodoc


class _SurahsSuccess implements HomeState {
  const _SurahsSuccess(this.surahsResponseModel);
  

 final  SurahsResponseModel surahsResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahsSuccessCopyWith<_SurahsSuccess> get copyWith => __$SurahsSuccessCopyWithImpl<_SurahsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahsSuccess&&(identical(other.surahsResponseModel, surahsResponseModel) || other.surahsResponseModel == surahsResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,surahsResponseModel);

@override
String toString() {
  return 'HomeState.surahsSuccess(surahsResponseModel: $surahsResponseModel)';
}


}

/// @nodoc
abstract mixin class _$SurahsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SurahsSuccessCopyWith(_SurahsSuccess value, $Res Function(_SurahsSuccess) _then) = __$SurahsSuccessCopyWithImpl;
@useResult
$Res call({
 SurahsResponseModel surahsResponseModel
});




}
/// @nodoc
class __$SurahsSuccessCopyWithImpl<$Res>
    implements _$SurahsSuccessCopyWith<$Res> {
  __$SurahsSuccessCopyWithImpl(this._self, this._then);

  final _SurahsSuccess _self;
  final $Res Function(_SurahsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? surahsResponseModel = null,}) {
  return _then(_SurahsSuccess(
null == surahsResponseModel ? _self.surahsResponseModel : surahsResponseModel // ignore: cast_nullable_to_non_nullable
as SurahsResponseModel,
  ));
}


}

/// @nodoc


class _SurahsError implements HomeState {
  const _SurahsError(this.apiErrorModel);
  

 final  ApiErrorModel apiErrorModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SurahsErrorCopyWith<_SurahsError> get copyWith => __$SurahsErrorCopyWithImpl<_SurahsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SurahsError&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'HomeState.surahsError(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$SurahsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$SurahsErrorCopyWith(_SurahsError value, $Res Function(_SurahsError) _then) = __$SurahsErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorModel apiErrorModel
});




}
/// @nodoc
class __$SurahsErrorCopyWithImpl<$Res>
    implements _$SurahsErrorCopyWith<$Res> {
  __$SurahsErrorCopyWithImpl(this._self, this._then);

  final _SurahsError _self;
  final $Res Function(_SurahsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_SurahsError(
null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ApiErrorModel,
  ));
}


}

// dart format on
