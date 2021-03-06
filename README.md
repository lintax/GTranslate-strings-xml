# Google Translate your strings.xml updates to all languages in your project 

1. clone
2. put file with text to be translated in file named `input.xml`
3. run `./translate_all.sh /path/to/your/project/src/main/res` - it will get list of languages by searching folders matching `strings-b+XX` pattern
4. paste contents of translated `strings_XX.xml` files to the files you maintain the translation
5. profit!

Requires python3

## Command line args

translate_all.sh `pathToRes` `sourceLang` `inputXmlFile`

```
pathToRes      full path to /path/to/your/project/src/main/res of your project (a folder where all strings-b-* folders are located)
sourceLang     language considered as being used in input file. Defaults to en
inputXmlFile   path to file containing source strings to be translated. Defaults to input.xml 
```

## Language codes for reference

Reference only, check google translate page before use. 

```
#   af          Afrikaans
#   ak          Akan
#   sq          Albanian
#   am          Amharic
#   ar          Arabic
#   hy          Armenian
#   az          Azerbaijani
#   eu          Basque
#   be          Belarusian
#   bn          Bengali
#   bh          Bihari
#   bs          Bosnian
#   br          Breton
#   bg          Bulgarian
#   km          Cambodian
#   ca          Catalan
#   chr         Cherokee
#   ny          Chichewa
#   zh          Chinese (Simplified)
#   co          Corsican
#   hr          Croatian
#   cs          Czech
#   da          Danish
#   nl          Dutch
#   en          English
#   eo          Esperanto
#   et          Estonian
#   ee          Ewe
#   fo          Faroese
#   tl          Filipino
#   fi          Finnish
#   fr          French
#   fy          Frisian
#   gl          Galician
#   ka          Georgian
#   de          German
#   el          Greek
#   gn          Guarani
#   gu          Gujarati
#   ht          Haitian Creole
#   ha          Hausa
#   iw          Hebrew
#   hi          Hindi
#   hu          Hungarian
#   is          Icelandic
#   ig          Igbo
#   id          Indonesian
#   ia          Interlingua
#   ga          Irish
#   it          Italian
#   ja          Japanese
#   jw          Javanese
#   kn          Kannada
#   kk          Kazakh
#   rw          Kinyarwanda
#   rn          Kirundi
#   kg          Kongo
#   ko          Korean
#   ku          Kurdish
#   ky          Kyrgyz
#   lo          Laothian
#   la          Latin
#   lv          Latvian
#   ln          Lingala
#   lt          Lithuanian
#   lg          Luganda
#   mk          Macedonian
#   mg          Malagasy
#   ms          Malay
#   ml          Malayalam
#   mt          Maltese
#   mi          Maori
#   mr          Marathi
#   mo          Moldavian
#   mn          Mongolian
#   ne          Nepali
#   no          Norwegian
#   nn          Norwegian (Nynorsk)
#   oc          Occitan
#   or          Oriya
#   om          Oromo
#   ps          Pashto
#   fa          Persian
#   pl          Polish
#   pa          Punjabi
#   qu          Quechua
#   ro          Romanian
#   rm          Romansh
#   ru          Russian
#   gd          Scots Gaelic
#   sr          Serbian
#   sh          Serbo-Croatian
#   st          Sesotho
#   tn          Setswana
#   sn          Shona
#   sd          Sindhi
#   si          Sinhalese
#   sk          Slovak
#   sl          Slovenian
#   so          Somali
#   es          Spanish
#   su          Sundanese
#   sw          Swahili
#   sv          Swedish
#   tg          Tajik
#   ta          Tamil
#   tt          Tatar
#   te          Telugu
#   th          Thai
#   ti          Tigrinya
#   to          Tonga
#   tr          Turkish
#   tk          Turkmen
#   tw          Twi
#   ug          Uighur
#   uk          Ukrainian
#   ur          Urdu
#   uz          Uzbek
#   vi          Vietnamese
#   cy          Welsh
#   wo          Wolof
#   xh          Xhosa
#   yi          Yiddish
#   yo          Yoruba
#   zu          Zulu
```
Original author's file-by-file translation tool is available [online](https://asrt.gluege.boerde.de/)
