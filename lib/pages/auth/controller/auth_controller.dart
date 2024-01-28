import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sih24/utils/constants.dart';

class AuthController extends GetxController {
  RxBool isAuthenticated = false.obs;

  Future<bool> authenticateUser() async {
    if (!isAuthenticated.value) {
      final LocalAuthentication auth = LocalAuthentication();
      final bool didAuthenticate = await auth.authenticate(
          localizedReason: 'Please authenticate to your trading jornal',
          options: const AuthenticationOptions(
            biometricOnly: false,
          ));
      isAuthenticated.value = didAuthenticate;
      if (isAuthenticated.value) {
        await dependedncyInjection.injectAdvanced();
        update();
        printInfo(info: "Authenticated");
        return true;
      }
    } else {
      printInfo(info: "False Auth Call");
    }
    return false;
  }
}
