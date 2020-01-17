import 'package:flutter/material.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import 'package:phono/screen/pages/state/symbol.dart';
import 'package:phono/screen/widgets/contentlayout.dart';
import 'package:provider/provider.dart';

class ContentScreen extends StatelessWidget {
  final GifController controller;
  ContentScreen({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentSymbol = Provider.of<Simbol>(context).getCurrentSymbol;

    return Expanded(
        flex: 3,
        child: Stack(
          children: <Widget>[
            Container(),
            ContentLayout(
              controller: controller,
              visible: currentSymbol == 0 ? true : false,
              symbol: "f",
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
            ),
            ContentLayout(
              visible: currentSymbol == 1 ? true : false,
              symbol: "v",
              gif: "assets/gif/consonant/v-min.gif",
              audio: "v.mp3",
              controller: controller,
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
            ),
            ContentLayout(
              visible: currentSymbol == 2 ? true : false,
              symbol: "p",
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
            ),
            ContentLayout(
              visible: currentSymbol == 3 ? true : false,
              symbol: "b",
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
            ),
            ContentLayout(
              visible: currentSymbol == 4 ? true : false,
              symbol: "dʒ",
              audio: "d3.mp3",
              gif: "assets/gif/consonant/d3-min.gif",
              controller: controller,
              sifat: "Voiced Bilabial Stop",
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
            ),
            ContentLayout(
              visible: currentSymbol == 5 ? true : false,
              symbol: "tʃ",
              audio: "tf.mp3",
              controller: controller,
              gif: "assets/gif/consonant/tʃ-min.gif",
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
            ),
            ContentLayout(
              visible: currentSymbol == 6 ? true : false,
              symbol: "i",
              audio: "i.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 7 ? true : false,
              symbol: "u",
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
            ),
            ContentLayout(
              visible: currentSymbol == 8 ? true : false,
              symbol: "s",
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
            ),
            ContentLayout(
              visible: currentSymbol == 9 ? true : false,
              symbol: "z",
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
            ),
            ContentLayout(
              visible: currentSymbol == 10 ? true : false,
              symbol: "t",
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
            ),
            ContentLayout(
              visible: currentSymbol == 11 ? true : false,
              symbol: "d",
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
            ),
            ContentLayout(
              visible: currentSymbol == 12 ? true : false,
              symbol: "ɹ",
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
            ),
            ContentLayout(
              visible: currentSymbol == 13 ? true : false,
              symbol: "l",
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
            ),
            ContentLayout(
              visible: currentSymbol == 14 ? true : false,
              symbol: "ɪ",
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
                          "Exist in lest than 20% of the world languages. Many people may distorted it."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter I. Followed by E, A, Y."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 15 ? true : false,
              symbol: "ʌ",
              audio: "v2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/ʌ-min.gif",
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
            ),
            ContentLayout(
              visible: currentSymbol == 16 ? true : false,
              symbol: "ʊ",
              audio: "u2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/ʊ-min.gif",
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
                          "Exist in lest than 20% of the world languages. Many people distorted it with the /u/ sound."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter U, lalu OO, O, da OU."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 17 ? true : false,
              symbol: "ʃ",
              audio: "ff.mp3",
              controller: controller,
              gif: "assets/gif/consonant/ʃ-min.gif",
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
                          "Sibilant is fricative consonants with a higher amplitude."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /ʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter T. Followed by SH, C, S, CH."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 18 ? true : false,
              symbol: "ʒ",
              audio: "3.mp3",
              controller: controller,
              gif: "assets/gif/consonant/ʒ-min.gif",
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
                      number: "- ", text: "It is present in less than 1% of English word."),
                  penjelasan(context,
                      number: "- ", text: "Most often represented by the letter S. Followed by G, Z, T."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 19 ? true : false,
              symbol: "k",
              audio: "k.mp3",
              controller: controller,
              gif: "assets/gif/consonant/k-min.gif",
              sifat: "Voiceless Velar Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Rise the back of the tongue toward the throat."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Stop the air and release with a strong puff."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Do not vibrate the vocal cords."),
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
            ),
            ContentLayout(
              visible: currentSymbol == 20 ? true : false,
              symbol: "g",
              audio: "g.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
              sifat: "Voiced velar Stop",
              content: Column(
                children: <Widget>[
                  penjelasan(context,
                      number: "1. ", text: "Slightly open the mouth, leave the lips neutrally."),
                  penjelasan(context,
                      number: "2. ",
                      text:
                          "Rise the back of the tongue toward the throat."),
                  penjelasan(context,
                      number: "3. ",
                      text:
                          "Stop the air, then release with a small puff."),
                  penjelasan(context,
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 21 ? true : false,
              symbol: "w",
              audio: "w.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 22 ? true : false,
              symbol: "j",
              audio: "j.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 23 ? true : false,
              symbol: "ə",
              audio: "ewalik.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 24 ? true : false,
              symbol: "θ",
              audio: "θ.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 25 ? true : false,
              symbol: "ð",
              audio: "ð.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 26 ? true : false,
              symbol: "m",
              audio: "m.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 27 ? true : false,
              symbol: "n",
              audio: "n.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 28 ? true : false,
              symbol: "e",
              audio: "e.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 29 ? true : false,
              symbol: "h",
              audio: "h.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 30 ? true : false,
              symbol: "ŋ",
              audio: "n2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 31 ? true : false,
              symbol: "ae",
              audio: "eponi.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 32 ? true : false,
              symbol: "ɑ",
              audio: "a.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 33 ? true : false,
              symbol: "ɔ",
              audio: "c2.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 34 ? true : false,
              symbol: "ɝ",
              audio: "3buntut.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
            ContentLayout(
              visible: currentSymbol == 35 ? true : false,
              symbol: "ɚ",
              audio: "ebuntut.mp3",
              controller: controller,
              gif: "assets/gif/vowel/i-min.gif",
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
                      number: "- ", text: "Counterpart: /dʒ/ (voiced)."),
                  penjelasan(context,
                      number: "- ",
                      text:
                          "Most often represented by the letter CH. Followed by T, TCH, C."),
                ],
              ),
            ),
          ],
        ));
  }
}
