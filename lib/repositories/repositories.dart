import 'package:connectivity/connectivity.dart';

//import 'package:first_project/model/signinmodel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_first_flutter_project/model/commonmodel.dart';
import 'package:my_first_flutter_project/model/registrationmodel.dart';
import 'package:my_first_flutter_project/webclient.dart';

// import '../Webclient/webclient.dart';
// import '../model/loginmode.dart';

class Repository {
  Future<CommonModel> checkPhoneNumber(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final CommonModel userModel = CommonModel.fromJson(response);
    return userModel;
  }

  Future<RegistrationModel> signup({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final RegistrationModel userModel = RegistrationModel.fromJson(response);
    return userModel;
  }
}
