import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_in/sign_in_response.dart';
import '../../repos/models/sign_in/sign_in_request.dart';
import '../../services/user_accounts_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'user_accounts_signin_form_state.dart';

part 'user_accounts_signin_form_cubit.freezed.dart';

class UserAccountsSigninFormCubit
    extends BaseFormCubit<UserAccountsSigninFormState> {
  late UserAccountsService userAccountsService;
  UserAccountsSigninFormCubit({required super.context})
      : super(initialState: UserAccountsSigninFormState.initial()){
    userAccountsService = GetIt.instance<UserAccountsService>();
  }

  SignInRequest createRequestData({String? email, String? password}) {
    final request = SignInRequest(
      email: email ?? formGroup.control("email").value,
      password: password ?? formGroup.control("password").value,
    );
    return request;
  }

  Future<SignInResponse> signIn(
      SignInRequest request) async {
    return userAccountsService.signIn(request).then((value) {
      emit(state.copyWith(
          signInResponse: value,
          signInStatus: BooleanStatus.success));
      userAccountsService.saveUserAuthTokenToSharedPreference(value);
      return Future.value(value);
    }).catchError((error) {
      showErrorMessage('Invalid credentials');
      emit(state.copyWith(signInStatus: BooleanStatus.error));
      throw error;
    });
  }

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'email': FormControl<String>(validators: [Validators.required]),
      'password': FormControl<String>(validators: [Validators.required]),
    });  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
