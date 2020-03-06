import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:phono/constant/constantroute.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/widgets/contentlayout.dart';
import 'package:provider/provider.dart';

class ContentScreen extends StatelessWidget {
  final GifController controller;
  ContentScreen({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentContent = Provider.of<Simbol>(context).getCurrentSymbol;
    var currentFlex = Provider.of<Simbol>(context);
    var wrongState = Provider.of<Simbol>(context);
    SizeConfig().init(context);
    return Expanded(
        flex: 3,
        child: Stack(
          children: <Widget>[
            Container(),
            ContentLayout(
              controller: controller,
              visible: currentContent == 0 ? true : false,
              symbol: "f",
              twistertext:
                  "A fisher named Fischer fished for fish from the edge of fissure",
              sifat: "Voiceless Labiodental Fricative",
              gif: "assets/gif/consonant/f-min.gif",
              audio: "f.mp3",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Gently bite the lower lip to leave a tiny gap."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Partially block the airflow with the lower lip and the upper teeth to create a lot friction."),
                  penjelasan(context,
                      number: "3. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /v/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter F. Then by 2 letter FF, PH, GH."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongf,
            ),
            ContentLayout(
              visible: currentContent == 1 ? true : false,
              symbol: "v",
              gif: "assets/gif/consonant/v-min.gif",
              audio: "v.mp3",
              controller: controller,
              twistertext:
                  " Vivian believes that Valerie's violet volleyball can be very valuable.",
              sifat: "Voiced Labiodental Fricative",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Gently bite the lower lip to leave a tiny gap."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Partially block the airflow with the lower lip and the upper teeth to create a lot friction."),
                  penjelasan(context,
                      number: "3. ", text: "Vibrate the vocal cords"),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /f/ (voiceless)"),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Only represented by the letter V, exception for the preposition *of* "),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongv,
            ),
            ContentLayout(
              visible: currentContent == 2 ? true : false,
              symbol: "p",
              twistertext:
                  "Please place the pleated pressed pants on the plain pressing plank",
              gif: "assets/gif/consonant/p-min.gif",
              audio: "p.mp3",
              controller: controller,
              sifat: "Voiceless Bilabial Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Push the lips together to stop the airflow."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Part the lips and release the air with a strong puff."),
                  penjelasan(context,
                      number: "3. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /b/ (voiced)"),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Aspiration is essential for all stop sounds, but only at the beginning of words."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 3 ? true : false,
              symbol: "b",
              twistertext: " A big black bug bit a big black bear",
              audio: "b.mp3",
              gif: "assets/gif/consonant/b-min.gif",
              controller: controller,
              sifat: "Voiced Bilabial Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Push the lips together to stop the airflow."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Part the lips, release the air with a strong puff."),
                  penjelasan(context,
                      number: "3. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /p/ (Voiceless)"),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Aspiration is essential for all stop sounds, but only at the beginning of words."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongb,
            ),
            ContentLayout(
              visible: currentContent == 4 ? true : false,
              symbol: "dʒ",
              twistertext:
                  "Major John Bridges and sergeant Jim Rogers gently changed the engine in their huge Jeep",
              audio: "d3.mp3",
              gif: "assets/gif/consonant/d3-min.gif",
              controller: controller,
              sifat: "Voiced Palato-Alveolar Affricate",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slightly open the mouth."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Put the tip of the tongue in the alveolar ridge to stop the air, just as to make the /d/ sound."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Arch the tongue. Release the air from the small gap to make a friction, just as to make the /ʒ/ sound."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /tʃ/ (voiceless)"),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter G. Then by the letter J, DG, D, GG."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 5 ? true : false,
              symbol: "tʃ",
              twistertext:
                  " If Charlie choose Charlton chocolate, should Charlie choose the cheap Charlton chocolate to chew?",
              audio: "tf.mp3",
              controller: controller,
              gif: "assets/gif/consonant/tf-min.gif",
              sifat: "Voiceless Palato-Alveolar Affricate",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slightly open the mouth."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Put the tip of the tongue in the alveolar ridge to stop the air, just as to make the /t/ sound."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Arch the tongue. Release the air from the small gap to make a friction, just as to make the /ʃ/ sound."),
                  penjelasan(context,
                      number: "4. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 6 ? true : false,
              symbol: "i",
              twistertext:
                  "A piece of cheap meat with cheese and cream for meal",
              audio: "i.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
              sifat: "Close Front Unrounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slightly open the mouth."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Put the tip of the tongue in the alveolar ridge to stop the air, just as to make the /t/ sound."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Arch the tongue. Release the air from the small gap to make a friction, just as to make the /ʃ/ sound."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 7 ? true : false,
              symbol: "u",
              twistertext: "Cute troops in blue boots",
              audio: "u.mp3",
              controller: controller,
              gif: "assets/gif/vowel/u-min.gif",
              sifat: "Close Back Rounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Open and push the lips out to make a small tensed circle."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Pull the tongue far back in the throat, tense it."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Rise the back of the tongue toward the roof of the mouth."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter U. Followed by OO, O, EW, OU."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongu,
            ),
            ContentLayout(
              visible: currentContent == 8 ? true : false,
              symbol: "s",
              twistertext:
                  " If she stops at the stop where I stop, then i shouldn't stop at the stop where she stops",
              audio: "s.mp3",
              controller: controller,
              gif: "assets/gif/consonant/s-min.gif",
              sifat: "Voiceless Alveolar Sibilant",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Rise the tip of the tongue to the alveolar ridge."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Release the air stream to make a friction."),
                  penjelasan(context,
                      number: "3. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /z/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Sibilant is fricative consonants with a higher amplitude."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 9 ? true : false,
              symbol: "z",
              twistertext:
                  "Fuzzy Wuzzy was a bear, Fuzzy Wuzzy had no hair, Fuzzy Wuzzy wasn't fuzzy, was he?",
              audio: "z.mp3",
              controller: controller,
              gif: "assets/gif/consonant/z-min.gif",
              sifat: "Voiced Alveolar Sibilant",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Rise the tip of the tongue to the alveolar ridge."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Release the air stream to make a friction."),
                  penjelasan(context,
                      number: "3. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /s/ (voiceless)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Sibilant is fricative consonants with a higher amplitude."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter S. Followed by Z, X."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongz,
            ),
            ContentLayout(
              visible: currentContent == 10 ? true : false,
              symbol: "t",
              twistertext:
                  'The two teen talk to the tutor, "is it harder to toot or to tutor two tooters to toot?"',
              audio: "t.mp3",
              controller: controller,
              gif: "assets/gif/consonant/t-min.gif",
              sifat: "Voiceless Alveolar Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Leave the lips neutrally"),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Place the tip of the tongue on the alveolar ridge"),
                  penjelasan(context,
                      number: "3. ",
                      text: "Stop the airflow, release with a strong puff."),
                  penjelasan(context,
                      number: "4. ", text: "Do not vibrate your vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart /d/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Aspiration is essential for all stop sounds, but only at the beginning of words."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongt,
            ),
            ContentLayout(
              visible: currentContent == 11 ? true : false,
              symbol: "d",
              twistertext:
                  "The duke dropped the dirty double damask dinner napkin.",
              audio: "d.mp3",
              controller: controller,
              gif: "assets/gif/consonant/d-min.gif",
              sifat: "Voiced Alveolar Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Leave the lips neutrally"),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Place the tip of the tongue on the alveolar ridge"),
                  penjelasan(context,
                      number: "3. ",
                      text: "Stop the airflow, release with a small puff."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate your vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart /t/ (voiceless)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Aspiration is essential for all stop sounds, but only at the beginning of words.."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 12 ? true : false,
              symbol: "ɹ",
              twistertext: "A rider rides racing bike in the rain",
              audio: "r.mp3",
              controller: controller,
              gif: "assets/gif/consonant/r-min.gif",
              sifat: "Voiced Alveolar Approximant",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slighly round the lips."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Rise the front of the tongue towards the alveolar ridge, but no touching."),
                  penjelasan(context,
                      number: "3. ", text: "Curl back the tongue, tense it."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongr,
            ),
            ContentLayout(
              visible: currentContent == 13 ? true : false,
              symbol: "l",
              twistertext: "A lone lamb lost his land",
              audio: "l.mp3",
              controller: controller,
              gif: "assets/gif/consonant/l-min.gif",
              sifat: "Voiced Alveolar Lateral Approximant",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Touch the alveolar ridge behind the upper front teeth with the tip of the tongue."),
                  penjelasan(context,
                      number: "2. ", text: "Lower the back of the tongue."),
                  penjelasan(context,
                      number: "3. ", text: "Vibrate the vocal cords."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 14 ? true : false,
              symbol: "ɪ",
              twistertext: " A king visits a kid in a big ship",
              audio: "ɪ.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
              sifat: "Near-Close Front Unrounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Spread the lips. Lips and tongue are relaxed"),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Rise the tongue high and push it to the front of the mouth."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "The tip of the tongue should be lower just behind the bottom front teeth."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Exist in less than 20% of the world languages. Many people may distorted it."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter I. Followed by E, A, Y."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongI,
            ),
            ContentLayout(
              visible: currentContent == 15 ? true : false,
              symbol: "ʌ",
              twistertext: "A duck comes into a pub",
              audio: "v2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/vwalik.gif",
              sifat: "Open Mid-Back Unrounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Open the mouth a little, relax it."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Put the tongue in the middle of the mouth."),
                  penjelasan(context,
                      number: "- ",
                      text: "Exist in only 5% of the world languages."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter U. Followed by O, OU, OO."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 16 ? true : false,
              symbol: "ʊ",
              twistertext: "A cook stood in a brook",
              audio: "u2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/u2.gif",
              sifat: "Near-Close Back Rounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Open and round the lips. Relax it."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Pull the tongue far back in the throat, relax it."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Rise the back of the tongue toward the roof of the mouth."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Exist in less than 20% of the world languages. Many people distorted it with the /u/ sound."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter U, lalu OO, O, da OU."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongu2,
            ),
            ContentLayout(
              visible: currentContent == 17 ? true : false,
              symbol: "ʃ",
              twistertext:
                  "If she stops at the shop where I stop, then i shouldn't stop to shop at the shop where she stops",
              audio: "ff.mp3",
              controller: controller,
              gif: "assets/gif/consonant/ff.gif",
              sifat: "Voiceless Palato-ALveolar Sibilant",
              content: Column(
                children: <Widget>[
                  penjelasan(context, number: "1. ", text: "Round the lips"),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Arch the tongue, rise it to the roof of the mouth. Make a small gap in between."),
                  penjelasan(context,
                      number: "3. ",
                      text: "Release the air stream to make a friction."),
                  penjelasan(context,
                      number: "4. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Sibilant is fricative consonant with a higher amplitude."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /ʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter T. Followed by SH, C, S, CH."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongs2,
            ),
            ContentLayout(
              visible: currentContent == 18 ? true : false,
              symbol: "ʒ",
              twistertext:
                  "The beige version of the television does not look usual but casual.",
              audio: "3.mp3",
              controller: controller,
              gif: "assets/gif/consonant/3.gif",
              sifat: "Voiced Palato-Alveolar Sibilant",
              content: Column(
                children: <Widget>[
                  penjelasan(context, number: "1. ", text: "Round the lips"),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Arch the tongue, rise it to the roof of the mouth. Make a small gap in between."),
                  penjelasan(context,
                      number: "3. ",
                      text: "Release the air stream to make a friction."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /ʃ/ (voiceless)."),
                  penjelasan(context,
                      number: "- ",
                      text: "It is present in less than 1% of English word."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter S. Followed by G, Z, T."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrong32,
            ),
            ContentLayout(
              visible: currentContent == 19 ? true : false,
              symbol: "k",
              twistertext: " Kane is keenly cleaning copper kettles",
              audio: "k.mp3",
              controller: controller,
              gif: "assets/gif/consonant/k-min.gif",
              sifat: "Voiceless Velar Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Rise the back of the tongue toward the throat."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Stop the air and release with a strong puff."),
                  penjelasan(context,
                      number: "3. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /g/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Aspiration is essential for all stop sounds, but only at the beginning of words."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter C. Followed by the letter K, CK, CH, CC, QUE."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 20 ? true : false,
              symbol: "g",
              twistertext: "Gale's great glass globe glows green",
              audio: "g.mp3",
              controller: controller,
              gif: "assets/gif/consonant/g-min.gif",
              sifat: "Voiced velar Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Slightly open the mouth, leave the lips neutrally."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Rise the back of the tongue toward the throat."),
                  penjelasan(context,
                      number: "3. ",
                      text: "Stop the air, then release with a small puff."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Aspiration is essential for all stop sounds, but only at the beginning of words."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Always represented by the letter G, but the letter G does not always represent this sound."),
                  penjelasan(context,
                      number: "   ",
                      text:
                          "- The letter G followed by the letter A, O, and U is pronounced as the /g/ sound."),
                  penjelasan(context,
                      number: "   ",
                      text:
                          "- The letter G followed by the letter E, I, and Y is pronounced as the /dʒ/ sound."),
                  penjelasan(context,
                      number: "   ",
                      text:
                          "- The letter G followed by the consonant letter is typically pronounced as /g/."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongg,
            ),
            ContentLayout(
              visible: currentContent == 21 ? true : false,
              symbol: "w",
              twistertext:
                  "If two witches watched two watches, which witch would watch which watch?",
              audio: "w.mp3",
              controller: controller,
              gif: "assets/gif/consonant/w-min.gif",
              sifat: "Voiced Labio-Velar Approximant",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Round the lips, tense it."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Pull the tongue further back to the throat, tense it."),
                  penjelasan(context,
                      number: "3. ",
                      text: "Flow the air while stretching the lips wide."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Called a semivowel."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter W. Followed by QU, GU, SU."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongw,
            ),
            ContentLayout(
              visible: currentContent == 22 ? true : false,
              symbol: "j",
              twistertext: "Local yokel yells the yellow yacht.",
              audio: "j.mp3",
              controller: controller,
              gif: "assets/gif/consonant/j-min.gif",
              sifat: "Voiced Palatal Approximant",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Slighlty open the mouth and leave the lips neutrally."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Arch the tongue, rise it to the roof of the mouth."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Lower the tip of the tongue behind the bottom front teeth, let the air gliding over the tongue."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Called a Semivowel."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter U. Followed by the letter Y, I, EW."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 23 ? true : false,
              symbol: "ə",
              twistertext: "Seven balloons above the ocean",
              audio: "ewalik.mp3",
              controller: controller,
              gif: "assets/gif/vowel/ewalik.gif",
              sifat: "Mid-Central Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Slightly open the mouth, relax the lips and tongue."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Place the tongue in the middle of the mouth."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter A. Followed by O, E, IO, I, U."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 24 ? true : false,
              symbol: "θ",
              twistertext:
                  " I thought a thought but the thought I thought I thought wasn't the thought I thought",
              audio: "θ.mp3",
              controller: controller,
              gif: "assets/gif/consonant/teta.gif",
              sifat: "Voiceless Dental Fricative",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slightly open the mouth."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Gently touch the bottom of the upper front teeth with the tip of the tongue."),
                  penjelasan(context,
                      number: "3. ",
                      text: "Blow air over the tongue to make a friction."),
                  penjelasan(context,
                      number: "4. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart /ð/ (voiceless)."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongteta,
            ),
            ContentLayout(
              visible: currentContent == 25 ? true : false,
              symbol: "ð",
              twistertext:
                  "Whether the weather be fine, or whether the weather be not, we'll weather the weather whatever the weather.",
              audio: "ð.mp3",
              controller: controller,
              gif: "assets/gif/consonant/o-min.gif",
              sifat: "Voiced Dental Fricative",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slightly open the mouth."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Gently touch the bottom of the upper front teeth with the tip of the tongue."),
                  penjelasan(context,
                      number: "3. ",
                      text: "Blow air over the tongue to make a friction."),
                  penjelasan(context,
                      number: "4. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart /θ/ (voiceless)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Occurs in less than 10% of the world's languages and it's not present in the majority of European and Asian languages."),
                  penjelasan(context,
                      number: "- ",
                      text: "Used in only less than 1% of English words."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongobuntut,
            ),
            ContentLayout(
              visible: currentContent == 26 ? true : false,
              symbol: "m",
              twistertext: "The mad man mixed a medicine mixture",
              audio: "m.mp3",
              controller: controller,
              gif: "assets/gif/consonant/m-min.gif",
              sifat: "Voiced Bilabial Nasal",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Press the lips together, keep it close."),
                  penjelasan(context,
                      number: "2. ", text: "Pass the air through nose."),
                  penjelasan(context,
                      number: "3. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Only represented by the letter M."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 27 ? true : false,
              symbol: "n",
              twistertext: "Nine nimble nobleman nibbled nuts",
              audio: "n.mp3",
              controller: controller,
              gif: "assets/gif/consonant/n-min.gif",
              sifat: "Voiced Alveolar Nasal",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Place the tip of the tongue on the alveolar ridge behind the upper front teeth."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Stop the air and direct it into the nose."),
                  penjelasan(context,
                      number: "3. ", text: "Vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most frequently used consonant in American English."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 28 ? true : false,
              symbol: "e",
              twistertext: "Men met and fed a wet elk",
              audio: "e.mp3",
              controller: controller,
              gif: "assets/gif/vowel/e.gif",
              sifat: "Close-Mid Front Unrounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Partially open the mouth. Lips and mouth are relaxed."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Push the tongue to the front of the mouth, just behind of the bottom front teeth."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter E. Followed by EA, A, IE."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 29 ? true : false,
              symbol: "h",
              twistertext: "Why Harry Hunt hunt heavy hairy hares for herb?",
              audio: "h.mp3",
              controller: controller,
              gif: "assets/gif/consonant/h-min.gif",
              sifat: "Voiceless Glottal Fricative",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Slightly open the mouth, leave the lips and tongue neutrally."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Breath out the air through the vocal cords."),
                  penjelasan(context,
                      number: "3. ", text: "Do not vibrate the vocal cords."),
                  penjelasan(context,
                      number: "- ", text: "Only represented by the letter H."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrongh,
            ),
            ContentLayout(
              visible: currentContent == 30 ? true : false,
              symbol: "ŋ",
              twistertext:
                  "Mrs. King is bringing something pink for Mr. King to drink",
              audio: "n2.mp3",
              controller: controller,
              gif: "assets/gif/consonant/n2-min.gif",
              sifat: "Voiced Velar Nasal",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text: "Pull the back of the tongue toward the throat."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Stop the air, direct it into the nose."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most commonly represented by the letter N when it comes before the letter G, K, and C."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 31 ? true : false,
              symbol: "ae",
              twistertext: "A fat black cat in a hat had a nap",
              audio: "eponi.mp3",
              controller: controller,
              gif: "assets/gif/vowel/ae.gif",
              sifat: "Near-Open Front Unrounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Open the mouth as wide as possible, tense the lips."),
                  penjelasan(context,
                      number: "2. ",
                      text: "Tense the tongue, place it very low."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "The tip of the tongue should be touching the back of the bottom front teeth."),
                  penjelasan(context,
                      number: "- ",
                      text: "The shorter version of the /ɑ/ sound."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter A. Followed by AL, AU."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 32 ? true : false,
              symbol: "ɑ",
              twistertext: "A fox got a shock in a shop",
              audio: "a.mp3",
              controller: controller,
              gif: "assets/gif/vowel/a.gif",
              sifat: "Open Back Unrounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Open the mouth as wide as possible, relax the lips."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Flatten the tongue, place it very low in the center."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "The tip of the tongue should be touching the back of the bottom front teeth."),
                  penjelasan(context,
                      number: "- ",
                      text: "The longer version of the /æ/ sound."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter O. Followed by A, AL."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 33 ? true : false,
              symbol: "ɔ",
              twistertext: "A small frog lost in a fog",
              audio: "c2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/cwalik.gif",
              sifat: "Open-Mid Back Rounded Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Open the mouth as wide as possible, round the lips."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Flatten the tongue, place it very low, pull it back."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "The tip of the tongue should be touching the back of the bottom front teeth."),
                  penjelasan(context,
                      number: "- ",
                      text: "A rounded version of the /ʌ/ sound."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter O. Followed by AU, A, AL, AW, OU, OA."),
                ],
              ),
              isWrong: false,
            ),
            ContentLayout(
              visible: currentContent == 34 ? true : false,
              symbol: "ɝ",
              twistertext:
                  "The nurse heard a thirsty bird flies to observe the dessert.",
              audio: "3buntut.mp3",
              controller: controller,
              gif: "assets/gif/vowel/3buntut.gif",
              sifat: "R-Colored Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Open the mouth a little. Tongue, mouth, and throath is tensed."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Rise the front of the tongue towards the alveolar ridge, but no touching."),
                  penjelasan(context,
                      number: "3. ", text: "Curl back the tongue."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "The strong version of the /ɚ/ sound, it is tensed."),
                  penjelasan(context,
                      number: "- ",
                      text: "Can be spelled with different vowel letters."),
                  penjelasan(context,
                      number: "- ", text: "Occurs in stressed syllables."),
                ],
              ),
              isWrong: true,
              wrongRoute: wrong3buntut,
            ),
            ContentLayout(
              visible: currentContent == 35 ? true : false,
              symbol: "ɚ",
              twistertext:
                  "Mr. Fraser, the red-colored collar man, is the clever author to answer the question better.",
              audio: "ebuntut.mp3",
              controller: controller,
              gif: "assets/gif/vowel/ebuntut.gif",
              sifat: "R-Colored Vowel",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ",
                      text:
                          "Open the mouth a little, tongue and throath is relaxed."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Rise the front of the tongue towards the alveolar ridge, but no touching."),
                  penjelasan(context,
                      number: "3. ", text: "Curl back the tongue."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "The weak version of the /ɝ/ sound, it is relaxed."),
                  penjelasan(context,
                      number: "- ", text: "Occurs in unstressed syllables."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter ER. Followed by OR, UR, AR."),
                ],
              ),
              isWrong: false,
            ),
          ],
        ));
  }
}
