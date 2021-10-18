import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/community_projects/communityProjects.dart';
import 'package:the_basics/views/home/home_content_desktop.dart';
import 'package:the_basics/views/home/home_content_mobile.dart';
import 'package:the_basics/widgets/centered_view/centered_view.dart';
import 'package:the_basics/widgets/new_navigation/nav_bar.dart';
// import 'package:the_basics/widgets/navigation_drawer/navigation_drawer.dart';
// import 'package:the_basics/widgets/highlight_projects/highlight_projects.dart';
// import 'package:the_basics/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:the_basics/widgets/highlights_carousel/highlights_carousel.dart';
import 'package:the_basics/widgets/community_projects_display/community_projects_display.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        // drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile //consider removing this 
        //     ? NavigationDrawer()
        //     : null,
        backgroundColor:Colors.white,

        body: SafeArea(

          child: SingleChildScrollView(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: <Widget>[
                // NavigationBar(), //edit this for the nav bar

                // Container(
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //       image: NetworkImage(
                //               "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
                //           ),
                //       fit: BoxFit.cover
                //   )
                //   width: double.infinity,
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
              Container(
                  color: Color(0XffD6F3FB),
                  child: Padding( //  vertical: 20.0, horizontal: 40.0
                   padding: const EdgeInsets.symmetric(vertical: 150.0),
                  child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                )),
                ),
                // Padding( //  vertical: 20.0, horizontal: 40.0
                //   padding: const EdgeInsets.symmetric(vertical: 150.0),
                //   child: ScreenTypeLayout(
                //   mobile: HomeContentMobile(),
                //   desktop: HomeContentDesktop(),
                // )),
                HighlightsCarousel(),
                CommunityProjectsDisplay()


                // HighlightProjects(),
                // ScreenTypeLayout(
                //   mobile: HomeContentMobile(),
                //   desktop: HomeContentDesktop(),
                // ),
                // Expanded(
                //     child: ScreenTypeLayout(
                //   mobile: HomeContentMobile(),
                //   desktop: HomeContentDesktop(),
                // )),
                // Row(
                //   children: [
                //     Expanded(child: communityProjectCard()),
                //     const SizedBox(width: 12),
                //     Expanded(child: communityProjectCard()),
                //     const SizedBox(width: 12),
                //     Expanded(child: communityProjectCard()),]
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}