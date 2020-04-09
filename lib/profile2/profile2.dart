import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile.dart';
import 'provider.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  profile _profile = profileprovider.getprofile();
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(fontFamily: 'Baloo'),
        child: Stack(children: <Widget>[
          Image.asset(
            'assets/profiles/landscape_1.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.50,
            width: MediaQuery.of(context).size.width,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.sort),
                onPressed: () {},
              ),
            ),
            body: Stack(
              children: <Widget>[
                _profileTitle(context),
                _bodyContant(context),
              ],
            ),
          )
        ]));
  }

  Widget _profileTitle(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
//      bottom: 250,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      shape: BoxShape.circle),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 116,
                  height: 116,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.6),
                      shape: BoxShape.circle),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/shard/1.jpg'),
                        fit: BoxFit.cover,
//                        height: MediaQuery.of(context).size.height*0.45,
                      ),
                      shape: BoxShape.circle),
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
          Text(
            _profile.uer.name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.1),
          ),
          Text(
            _profile.uer.address,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyContant(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.36,
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _counters(context),
            _divider(context),
            // 3 ... because it list Widget
            ..._aboutMe(context),
            SizedBox(height: 5,),
            _frinends(context),
            SizedBox(height: 2,),
            _contacts(context),
          ],
        ),
      ),
    );
  }

  TextStyle _bottomBarTitle = TextStyle(
    color: Colors.grey.shade600,
  );
  TextStyle _bottomBarsubTitle =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700);

  Widget _counters(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'FOLLWERS',
                style: _bottomBarTitle,
              ),
              Text(
                _profile.follwers.toString(),
                style: _bottomBarsubTitle,
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'FOLLWING',
                style: _bottomBarTitle,
              ),
              Text(
                _profile.follwing.toString(),
                style: _bottomBarsubTitle,
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'FRIENDS',
                style: _bottomBarTitle,
              ),
              Text(
                _profile.friends.toString(),
                style: _bottomBarsubTitle,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _divider(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
    );
  }

  List<Widget> _aboutMe(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(
          'ABOUT ME',
          style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          _profile.uer.about,
          style: TextStyle(
            color: Color(0xff4e4e4e),
            height: 1.5,
            letterSpacing: 1.1,
          ),
        ),
      ),
    ];
  }

  Widget _frinends(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 10, top: 10, bottom: 10),
      child: Text(
        "FRIENDS (${_profile.friends.toString()})",
        style: TextStyle(
            color: Color(0xff4e4e4e),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _contacts(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 16),
        height: 50,
        child: ListView(
            scrollDirection: Axis.horizontal,
children: <Widget>[
  img(url: 'assets/shard/girl2.jpeg',),
  img(url: 'assets/shard/man4.png',),
  img(url: 'assets/shard/1.jpg',),
  img(url: 'assets/shard/man5.png',),
  img(url: 'assets/shard/girl2.jpeg',),
  img(url: 'assets/shard/man4.png',),
  img(url: 'assets/shard/1.jpg',),
  img(url: 'assets/shard/man5.png',),

    ],
//make loop for one page without put diffrent pic
//            children: List.generate(10, (index) {
//              return Container(
//                margin: EdgeInsets.only(right: 10, bottom: 2),
//                width: 50,
//                decoration: BoxDecoration(
//                    image: DecorationImage(
//                        image: ExactAssetImage('assets/shard/girl2.jpeg'),
//                        fit: BoxFit.cover),
//                    shape: BoxShape.circle),
//              );
//            }).toList()
        )
    );

  }
}

class img extends StatelessWidget {
  String url;
   img({Key key,this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.only(right: 10, bottom: 2),
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(url),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              );
  }
}
