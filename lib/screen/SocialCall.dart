import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:social_prokit/utils/SocialColors.dart';
import 'package:social_prokit/utils/SocialConstant.dart';
import 'package:social_prokit/utils/SocialImages.dart';
import 'package:social_prokit/utils/SocialStrings.dart';
import 'package:social_prokit/utils/SocialWidget.dart';

class SocialCall extends StatefulWidget {
  static String tag = '/SocialCall';

  @override
  SocialCallState createState() => SocialCallState();
}

class SocialCallState extends State<SocialCall> {
  @override
  Widget build(BuildContext context) {
    // changeStatusColor(social_app_background_color);
    var width = MediaQuery.of(context).size.width;
    Widget mOption(var color, var icon, var iconColor) {
      return GestureDetector(
        onTap: () {
          finish(context);
        },
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          width: width * 0.18,
          height: width * 0.18,
          child: Icon(icon, color: iconColor, size: 30),
        ),
      );
    }

    return Scaffold(
      //    backgroundColor: social_white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            8.height,
            GestureDetector(
              onTap: () {
                finish(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: spacing_standard_new),
                width: width * 0.1,
                height: width * 0.1,
                decoration: boxDecoration(showShadow: false, bgColor: social_colorPrimary, radius: 12),
                child: Icon(Icons.keyboard_arrow_left, color: social_white),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl: social_ripple,
                        height: width * 0.5,
                        color: context.cardColor,
                        width: width * 0.5,
                      ),
                      CircleAvatar(backgroundImage: CachedNetworkImageProvider(social_ic_user1), radius: width * 0.15),
                    ],
                  ),
                  SizedBox(height: spacing_standard_new),
                  text(social_name, fontFamily: fontMedium, fontSize: textSizeNormal),
                  text(social_lbl_ringing, textColor: social_textColorSecondary),
                  SizedBox(height: spacing_large),
                  Container(
                    margin: EdgeInsets.all(spacing_large),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        mOption(social_colorPrimary, Icons.videocam, social_white),
                        mOption(social_view_color, Icons.mic_none, social_textColorPrimary),
                        mOption(social_form_google, Icons.call, social_white),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
