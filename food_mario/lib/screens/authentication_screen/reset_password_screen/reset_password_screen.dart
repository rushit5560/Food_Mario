import 'package:flutter/material.dart';
import 'package:food_mario/utils/extensions/extensions.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/colors.dart';
import '../../../constants/messages.dart';
import '../../../controller/authentication_screen_controllers/reset_password_screen_controller.dart';
import '../../../custom_widgets/custom_appbar.dart';
import '../../../custom_widgets/custom_submit_button.dart';
import '../../../custom_widgets/custom_textfromfiled.dart';
import '../../../utils/fileld_validator/field_validator.dart';
import '../../../utils/style/style.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);
final resetPasswordScreenController = Get.put(ResetPasswordScreenController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whiteColor2,
      appBar: customAppBarModule(
        text: AppMessages.resetPassword,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: resetPasswordScreenController.formKey,
              child: TextFormFiledCustom(
                fieldController: resetPasswordScreenController.phoneOrEmailTextFieldController,
                hintText: AppMessages.enterPhoneNumber,
                keyboardType: TextInputType.text,
                validate: (value) => FieldValidator().validateMobileNumber(value),
              ),
            ),
            SizedBox(height: 4.h),
            TextFormFiledCustom(
              fieldController: resetPasswordScreenController.phoneOrEmailTextFieldController,
              hintText: AppMessages.enterEmailAddress,
              keyboardType: TextInputType.text,
              validate: (value) => FieldValidator().validateEmail(value),
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 8,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(AppMessages.resetEmail,
                      style: TextStyleConfig.textStyle(
                          textColor: AppColors.grey400Color,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ).commonOnlyPadding(right: 68),
                ),
                Expanded(
                  flex: 7,
                  child: CustomSubmitButtonModule(
                    labelText:AppMessages.Continue,
                    onPress: ()  {
                      if (resetPasswordScreenController.formKey.currentState!.validate()) {
                      }
                    },
                    buttonColor: AppColors.grey800Color,
                  ).commonOnlyPadding(left: 5),
                ),
              ],
            ),
            SizedBox(height: 38.h),
            Text(AppMessages.verifyCodeText2),
          ],
        ).commonSymmetricPadding(vertical: 85,horizontal: 25),
      ),
    );
  }
}
