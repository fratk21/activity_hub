import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionService {
  final Connectivity _connectivity = Connectivity();

  Future<bool> isInternetConnected() async {
    final ConnectivityResult connectionStatus =
        await _connectivity.checkConnectivity();
    return connectionStatus != ConnectivityResult.none;
  }
}

// final isConnected = await connectionService.isInternetConnected();
//            if (isConnected) {
//              // İnternet bağlantısı var, işlemlerinizi burada yapın.
//            } else {
//              // İnternet bağlantısı yok, uygun bir sayfaya yönlendirin.
//              Navigator.push(context, MaterialPageRoute(builder: (context) => NoInternetPage()));
//            }