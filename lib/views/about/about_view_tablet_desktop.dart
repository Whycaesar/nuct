import 'package:flutter/material.dart';
import 'package:nuct/widgets/about_details/about_details.dart';
import 'package:nuct/widgets/about_details/about_title.dart';

class AboutViewTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var text = new RichText(
      text: new TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: new TextStyle(
          fontSize: 12,
          height: 1.5,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
          color: Colors.black,
        ),

        children: <TextSpan>[
          new TextSpan(
              text: 'Nicholas Berglund',
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              )),
          new TextSpan(
            text:
                ' has been based in Paris for 12 years, now lives between Milan and Spain. Nicholas started in this industry more than 30 years ago when he became a manager of a still and film production studio in Copenhagen, which he also helped build. He worked his way up as a runner, production manager, gaffer, grip and producer while getting a degree in marketing at night. By the mid-‘90s Nicholas was working in production on feature films, and in 1994 became head of TV at Young & Rubicam Denmark . After starting and selling his own production company, Nicholas came to Paris and worked for The Gang Films to develop its international network and seeking talents. He then started the company Nicholas Berglund in 2009.  Now with 30 years of experience in the creative, advertising, fashion, and production industries, Nicholas Berglund has worked with renowned advertising agencies such as Publicis, Ruini e Mariotti, EURO RSCG, Ogilvy & Mather, Saatchi, BBDO, Forsman Bodenfors, Wieden + Kennedy, and Dentsu. Nicholas Berglund has serviced a wide range of international clients, including Apple, Audi, Bang & Olufsen, BMW, FIAT Group, Roger Dubuis, GUCCI, Levi`s, SKODA, Mercedes to name a few. Nicholas Berglund is known as the guy who knows everyone everywhere.',
          ),
          new TextSpan(
              text: '\n \n Rick Romaniuk',
              style: new TextStyle(fontWeight: FontWeight.bold)),
          new TextSpan(
              text:
                  ' is based in Prague, and has started in the industry 12 years ago, moving from work on set in various departments to bidding, producing and eventually managing directors. Drawing from the experience from years spent working at Radioaktive film in Kyiv, a connection has been made that lead to a successful collaboration with NB resulting in an effective partnership with Nicholas Berglund. Efficient workflow lead by Rick allowed NB: to maximise the reach of clients and talents, while manifesting the core values of Nicholas Berglund agency - love and respect.'),
          TextSpan(
              text:
                  '\n \n Nota bene is a Latin phrase meaning \'note well,\' coming from notāre—to note. It is in the singular imperative mood, instructing one individual to note well the matter at hand. (The pluralis form is notate bene.) In present-day English, it is used to draw the attention of the reader to a certain (side) aspect or detail of the subject on hand, translating it as \'pay attention\' or \'take notice\'. It is often written in the abbreviated form: N.B.')
        ],
      ),
    );

    return ListView(
      children: [
        Row(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width * 0.35 - 70,
              child: Align(
                alignment: Alignment.topLeft,
                child: AboutTitle('About the company'),
              ),
            ),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width * 0.65 - 70,
              child: Align(
                alignment: Alignment.topLeft,
                child: AboutDetails(
                  'Nicholas Berglund is a creative consulting company based in between France, Italy and Spain. Working on a global scale, Nicholas Berglund provides creative solutions and strategies to a network of international clients through its roster of high-end commercial directors, and its production and consulting services. We manage directors as wide as possible and help connecting partners around the world supporting our talents within the network and partners.',
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.35 - 70,
              child: Align(
                alignment: Alignment.topLeft,
                child: AboutTitle('About the work'),
              ),
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.65 - 70,
              child: Align(
                alignment: Alignment.topLeft,
                child: AboutDetails(
                  'Powered by an international creative network of established and emerging talent, Nicholas Berglund believes nurturing the connection between a brand and consumer through the right creative platform will result in higher consumer motivation, loyalty and a flourishing brand connection. Harnessing an international talent base, Nicholas Berglund ultimately seeks to create that magic environment where trend insights, creativity and brand melt together to create a true connection. We manage directors and their representation all around the world and believe success lies in bringing the band together.',
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width * 0.35 - 70,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'About the people',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width * 0.65 - 70,
              child: Align(
                alignment: Alignment.topLeft,
                child: text,
              ),
            )
          ],
        ),
      ],
    );
  }
}
