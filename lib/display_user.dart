import 'package:flutter/widgets.dart';
import 'package:flutter_app/user_model.dart';
import 'package:provider/provider.dart';

class DisplayUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserModel userModel = Provider.of<UserModel>(context);
    return userModel.currentUser == null
        ? Text("Loading username...")
        : Text(
            userModel.currentUser.userName,
            style: TextStyle(fontSize: 30),
          );


    // Både ovan och det under funkar men vet inte när det ena är att föredras

    // return Consumer<UserModel>(
    //   builder: (context, userModel, child) {
    //     return userModel.currentUser == null
    //         ? Text("Loading username...")
    //         : Text(
    //             userModel.currentUser.userName,
    //             style: TextStyle(fontSize: 30),
    //           );
    //   },
    // );
  }
}
