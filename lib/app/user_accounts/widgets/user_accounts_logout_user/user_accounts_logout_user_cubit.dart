import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../services/user_accounts_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'user_accounts_logout_user_state.dart';

part 'user_accounts_logout_user_cubit.freezed.dart';

class UserAccountsLogoutUserCubit
    extends BaseCubit<UserAccountsLogoutUserState> {
  late UserAccountsService userAccountsService;
  UserAccountsLogoutUserCubit({required super.context})
      : super(initialState: UserAccountsLogoutUserState.initial()){
    userAccountsService = GetIt.instance<UserAccountsService>();
  }


  logout(){
    userAccountsService.deleteUserAuthTokenFromSharedPreferences();
  }
  
}
