import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sale_your_food/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/cake.jpg'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      LineAwesomeIcons.pen,
                      color: kDarkTheme.primaryColor,
                      size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text('Nicolas Tesla', style: kTitleTextStyle),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text('Nicolas@gmail.com', style: kCaptionTextStyle),
        ],
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        profileInfo,
      ],
    );

    return Theme(
      data: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'RobotoMono',
        primaryColor: kLightPrimaryColor,
        canvasColor: kLightPrimaryColor,
        backgroundColor: kLightSecondaryColor,
        accentColor: kAccentColor,
        iconTheme: ThemeData.dark().iconTheme.copyWith(
              color: kDarkSecondaryColor,
            ),
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'RobotoMono',
              bodyColor: kDarkSecondaryColor,
              displayColor: kDarkSecondaryColor,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(height: kSpacingUnit.w * 4),
            header,
            Expanded(
              child: ListView(
                children: <Widget>[
                  ProfileListItem(
                      icon: LineAwesomeIcons.history, text: 'Purchase History'),
                  ProfileListItem(
                      icon: LineAwesomeIcons.filter, text: 'Filter'),
                  ProfileListItem(
                      icon: LineAwesomeIcons.question_circle,
                      text: 'Help & Support'),
                  ProfileListItem(icon: LineAwesomeIcons.cog, text: 'Settings'),
                  ProfileListItem(
                    icon: LineAwesomeIcons.alternate_sign_out,
                    text: 'Logout',
                    hasNavigation: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final text;
  final bool hasNavigation;
  const ProfileListItem({
    Key key,
    this.icon,
    this.text,
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit.w * 5,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 4,
      ).copyWith(
        bottom: kSpacingUnit.w * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
        color: Theme.of(context).backgroundColor,
      ),
      child: InkWell(
        onTap: () {
          print(this.text);
        },
        child: Row(
          children: <Widget>[
            Icon(
              this.icon,
              size: kSpacingUnit.w * 2.5,
            ),
            SizedBox(
              width: kSpacingUnit.w * 2.5,
            ),
            Text(
              this.text,
              style: kTitleTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            if (this.hasNavigation)
              Icon(
                LineAwesomeIcons.angle_right,
                size: kSpacingUnit.w * 2.5,
              ),
          ],
        ),
      ),
    );
  }
}
