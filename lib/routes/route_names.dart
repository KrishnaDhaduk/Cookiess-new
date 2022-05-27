import 'package:flutter/material.dart';
import '../modules/account/account_screen.dart';
import '../modules/account_verification/account_verification.dart';
import '../modules/collaboration/components/collaboration_screen_details.dart';
import '../modules/comments/comments.dart';
import '../modules/create_account/create_account.dart';
import '../modules/edit_profile/edit_profile.dart';
import '../modules/finish_cooking_screen/finish_cooking_screen.dart';
import '../modules/forgot_password/forgot_password.dart';
import '../modules/in_search/in_search.dart';
import '../modules/language/language_screen.dart';
import '../modules/notification/notification_screen.dart';
import '../modules/profile/profile1_screen/profile1_screen.dart';
import '../modules/profile_insights/profile_insights_screen.dart';
import '../modules/recipe_details/recipes_details_screen.dart';
import '../modules/resend_account_verification/resend_account_verification.dart';
import '../modules/reset_email/reset_email.dart';
import '../modules/reset_password/reset_password.dart';
import '../modules/search_result/search_result.dart';
import '../modules/search_screen/search_screen.dart';
import '../modules/setting_notification/setting_notification.dart';
import '../modules/settings/settings.dart';
import '../modules/sign_in/sign_in.dart';
import '../modules/step_by_step/step_by_step_screen.dart';
import '../modules/theme/theme_screen.dart';
import '../modules/upload_new_recipes/upload_new_recipe.dart';
import '../modules/upload_recipe/upload_recipe.dart';
import 'routes.dart';

class NavigationServices {
  NavigationServices(this.context);

  final BuildContext context;

  // ignore: unused_element
  Future<dynamic> _pushMaterialPageRoute(Widget widget,
      {bool fullscreenDialog: false}) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget, fullscreenDialog: fullscreenDialog),
    );
  }

  void gotoSplashScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.Splash, (Route<dynamic> route) => false);
  }

  void gotoHomeScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.Home, (Route<dynamic> route) => false);
  }

  Future<dynamic> gotoBottomBarScreen() async {
    return Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.Home, (Route<dynamic> route) => false);
  }

  Future<dynamic> gotoNotificationScreen() async {
    return await _pushMaterialPageRoute(NotificationScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoCreateAccountScreen() async {
    return await _pushMaterialPageRoute(CreateAccount(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoSignInScreen() async {
    return await _pushMaterialPageRoute(SignIn(), fullscreenDialog: true);
  }

  Future<dynamic> gotoForgotPasswordScreen() async {
    return await _pushMaterialPageRoute(ForgotPassword(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoResetEmailScreen() async {
    return await _pushMaterialPageRoute(ResetEmail(), fullscreenDialog: true);
  }

  Future<dynamic> gotoResetPasswordScreen() async {
    return await _pushMaterialPageRoute(ResetPassword(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoAccountVerificationScreen() async {
    return await _pushMaterialPageRoute(AccountVerification(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoResendAccountVerificationScreen() async {
    return await _pushMaterialPageRoute(ResendAccountVerification(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoCollaborationScreenDetails() async {
    return await _pushMaterialPageRoute(CollaborationScreenDetails(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoUploadRecipeScreen() async {
    return await _pushMaterialPageRoute(UploadRecipe(), fullscreenDialog: true);
  }

  Future<dynamic> gotoSearchScreen() async {
    return await _pushMaterialPageRoute(SearchScreen(), fullscreenDialog: true);
  }

  Future<dynamic> gotoInSearchScreen() async {
    return await _pushMaterialPageRoute(InSearchScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoSearchResultScreen() async {
    return await _pushMaterialPageRoute(SearchResult(), fullscreenDialog: true);
  }

  Future<dynamic> gotoRecipeDetailsScreen() async {
    return await _pushMaterialPageRoute(RecipeDetailsScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoStepByStepScreen() async {
    return await _pushMaterialPageRoute(StepByStepScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoFinishCookingScreen() async {
    return await _pushMaterialPageRoute(FinishCookingScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotogotoProfile1Screen() async {
    return await _pushMaterialPageRoute(Profile1Screen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoUploadNewRecipesScreen() async {
    return await _pushMaterialPageRoute(UploadNewRecipes(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoProfileInsightsScreen() async {
    return await _pushMaterialPageRoute(ProfileInsightsScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoEditProfileScreen() async {
    return await _pushMaterialPageRoute(EditProfile(), fullscreenDialog: true);
  }

  Future<dynamic> gotoCommentsScreen() async {
    return await _pushMaterialPageRoute(CommentsScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoSettingsScreen() async {
    return await _pushMaterialPageRoute(SettingsScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoAccountScreen() async {
    return await _pushMaterialPageRoute(AccountScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoThemeScreen() async {
    return await _pushMaterialPageRoute(ThemeScreen(), fullscreenDialog: true);
  }

  Future<dynamic> gotoLanguageScreen() async {
    return await _pushMaterialPageRoute(LanguageScreen(),
        fullscreenDialog: true);
  }

  Future<dynamic> gotoSettingNotificationScreen() async {
    return await _pushMaterialPageRoute(SettingNotificationScreen(),
        fullscreenDialog: true);
  }
}
