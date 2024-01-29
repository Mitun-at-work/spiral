import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';
import 'package:sih24/utils/constants.dart';

class AuthController extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();

  // Auth User
  Future<void> authenticateUser() async {
    final bool isAuthenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to your trading jornal',
        options: const AuthenticationOptions(
          biometricOnly: false,
        ));
    if (isAuthenticated) {
      await dependedncyInjection.injectAdvanced();
      Get.offAndToNamed("home");
    }
  }
}
