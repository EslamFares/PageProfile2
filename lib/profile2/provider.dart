import 'package:profilepage2/profile2/profile.dart';

class profileprovider {
  static profile getprofile() {
    return profile(
      uer: User(
          name: 'Eslam Fares',
          address: 'Mansoura, Egypt',
          about:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam semper ligula arcu,  maximus nisl lacinia at. Donec tellus erat, fermentum ut mattis.")
    ,follwing: 364,
      follwers: 2318,
      friends: 25
    );
  }
}
