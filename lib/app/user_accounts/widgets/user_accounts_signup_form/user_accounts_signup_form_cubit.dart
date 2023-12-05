import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/user_accounts/repos/models/sign_up/sign_up_response.dart';
import '../../repos/models/sign_up/sign_up_request.dart';
import '../../services/user_accounts_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'user_accounts_signup_form_state.dart';

part 'user_accounts_signup_form_cubit.freezed.dart';

class UserAccountsSignupFormCubit
    extends BaseFormCubit<UserAccountsSignupFormState> {
  late UserAccountsService userAccountsService;

  UserAccountsSignupFormCubit({required super.context})
      : super(initialState: UserAccountsSignupFormState.initial()){
    userAccountsService = GetIt.instance<UserAccountsService>();
  }


  SignUpRequest createRequestData({String? displayName, String? email, String? password, String? phoneNumber }) {
        final request = SignUpRequest(
          displayName: displayName ?? formGroup.control("displayName").value,
          email: email ?? formGroup.control("email").value,
          password: password ?? formGroup.control("password").value,
        );
        return request;
      }

    Future<SignUpResponse> signUp(
        SignUpRequest request) async {
        return userAccountsService.signUp(request).then((value) {
          emit(state.copyWith(
              signUpResponse: value,
              signUpStatus: BooleanStatus.success));
          return Future.value(value);
        }).catchError((error) {
          emit(state.copyWith(signUpStatus: BooleanStatus.error));
          throw error;
        });
      }

  @override
  FormGroup getFormGroup() {
    return FormGroup({
      'displayName': FormControl<String>(validators: [Validators.required]),
      'email': FormControl<String>(validators: [Validators.required]),
      'password': FormControl<String>(validators: [Validators.required]),
      // 'phoneNumber': FormControl<String>(validators: [Validators.required]),
    });  }

  @override
  void updateFormValidationState(ControlStatus event) {
    emit(state.copyWith(formValid: event));
  }
}
