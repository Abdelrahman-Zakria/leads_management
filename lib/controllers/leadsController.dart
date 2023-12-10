import 'package:get/get.dart';

class LeadsController extends GetxController{

  List<Map> allLeads = [
    {
      "id": 1,
      "name": "Eliseo Dibbert",
      "email": "duncan.williamson@doyle.org",
      "phone": "941.993.3011",
      "value": "812.00",
      "status": "Lost",
      "sales": "Jane",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 2,
      "name": "Eusebio Kemmer",
      "email": "otilia35@hotmail.com",
      "phone": "929-655-0455",
      "value": "920.00",
      "status": "Lost",
      "sales": "Rocky",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 3,
      "name": "Donald DuBuque",
      "email": "dwight.bogan@yahoo.com",
      "phone": "(828) 349-0288",
      "value": "875.00",
      "status": "Converted",
      "sales": "Brooke",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 4,
      "name": "Kiana Shanahan",
      "email": "casandra.hoeger@schoen.com",
      "phone": "364-871-9293",
      "value": "993.00",
      "status": "Rejected",
      "sales": "Rosie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 5,
      "name": "Sunny Hoppe",
      "email": "shaylee72@gmail.com",
      "phone": "619-524-6476",
      "value": "801.00",
      "status": "Rejected",
      "sales": "Kiley",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 6,
      "name": "Mossie Hudson",
      "email": "erik25@gmail.com",
      "phone": "+13613033408",
      "value": "984.00",
      "status": "Converted",
      "sales": "Britney",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 7,
      "name": "Taylor Feil PhD",
      "email": "avery19@hotmail.com",
      "phone": "(669) 880-8431",
      "value": "708.00",
      "status": "Contacted",
      "sales": "Victor",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 8,
      "name": "Gideon Feil",
      "email": "hahn.elmo@yahoo.com",
      "phone": "+1.256.697.0025",
      "value": "883.00",
      "status": "Converted",
      "sales": "Billie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 9,
      "name": "Jackson Simonis",
      "email": "bosco.nicola@hotmail.com",
      "phone": "(820) 359-9188",
      "value": "881.00",
      "status": "Lost",
      "sales": "Ervin",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 10,
      "name": "Prof. Micaela Stark Sr.",
      "email": "kaylin17@strosin.org",
      "phone": "510.653.1408",
      "value": "880.00",
      "status": "Lost",
      "sales": "Otilia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 11,
      "name": "Johathan Mayer",
      "email": "melody07@bartoletti.com",
      "phone": "912.268.2330",
      "value": "678.00",
      "status": "Converted",
      "sales": "Britney",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 12,
      "name": "Mrs. Aaliyah Shanahan Jr.",
      "email": "pklocko@cruickshank.biz",
      "phone": "+1.680.318.7656",
      "value": "661.00",
      "status": "Lost",
      "sales": "Brooke",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 13,
      "name": "Robin Sporer",
      "email": "hunter60@gmail.com",
      "phone": "+1.341.890.3841",
      "value": "825.00",
      "status": "Rejected",
      "sales": "Jake",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 14,
      "name": "Dr. Anthony Paucek Sr.",
      "email": "crist.roselyn@hotmail.com",
      "phone": "(929) 986-9506",
      "value": "896.00",
      "status": "Contacted",
      "sales": "Jake",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 15,
      "name": "Katharina Cruickshank",
      "email": "noe.wintheiser@hotmail.com",
      "phone": "+1 (985) 808-2630",
      "value": "919.00",
      "status": "Rejected",
      "sales": "Hugh",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 16,
      "name": "Bryana Muller V",
      "email": "lucius.okeefe@herzog.com",
      "phone": "+1-774-932-1252",
      "value": "697.00",
      "status": "Qualified",
      "sales": "Sunny",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 17,
      "name": "Abel Welch",
      "email": "emante@hotmail.com",
      "phone": "651.367.9557",
      "value": "673.00",
      "status": "New",
      "sales": "Brooke",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 18,
      "name": "Jalon Mayer",
      "email": "treutel.danny@emard.com",
      "phone": "754-788-4310",
      "value": "953.00",
      "status": "Qualified",
      "sales": "Vaughn",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 19,
      "name": "Amani Cummings",
      "email": "rlubowitz@hauck.info",
      "phone": "814.593.4585",
      "value": "708.00",
      "status": "Lost",
      "sales": "Ervin",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 20,
      "name": "Earlene Pouros",
      "email": "mlebsack@gmail.com",
      "phone": "540-477-3648",
      "value": "651.00",
      "status": "Converted",
      "sales": "Bethany",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 21,
      "name": "Jewell Gulgowski",
      "email": "asha59@gmail.com",
      "phone": "+1 (515) 585-1523",
      "value": "953.00",
      "status": "Qualified",
      "sales": "Bethany",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 22,
      "name": "Mr. Irwin Leuschke",
      "email": "loma51@daugherty.biz",
      "phone": "678-762-4981",
      "value": "733.00",
      "status": "Contacted",
      "sales": "Britney",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 23,
      "name": "Bettye O'Kon",
      "email": "metz.darrell@hotmail.com",
      "phone": "(443) 572-3662",
      "value": "729.00",
      "status": "New",
      "sales": "Brooke",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 24,
      "name": "Jaren Hauck V",
      "email": "vella28@gmail.com",
      "phone": "+1 (458) 492-4791",
      "value": "960.00",
      "status": "New",
      "sales": "Kitty",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 25,
      "name": "Octavia Kub",
      "email": "hagenes.donavon@huels.com",
      "phone": "+1-661-890-1674",
      "value": "789.00",
      "status": "Converted",
      "sales": "Billie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 26,
      "name": "Taurean Ondricka",
      "email": "jennyfer.oberbrunner@hotmail.com",
      "phone": "+1-269-498-7959",
      "value": "845.00",
      "status": "Lost",
      "sales": "Noelia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 27,
      "name": "Ryley Sanford",
      "email": "upadberg@hessel.com",
      "phone": "1-520-465-2225",
      "value": "874.00",
      "status": "Rejected",
      "sales": "Vaughn",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 28,
      "name": "Moises Kub Jr.",
      "email": "freddie.connelly@flatley.com",
      "phone": "352.285.3048",
      "value": "669.00",
      "status": "Contacted",
      "sales": "Kitty",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 29,
      "name": "Ms. Vergie Kessler Jr.",
      "email": "aniya.schmeler@gislason.com",
      "phone": "(202) 640-2578",
      "value": "770.00",
      "status": "Lost",
      "sales": "Lilla",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 30,
      "name": "Dr. Cicero Mayert Sr.",
      "email": "jacobson.erin@towne.com",
      "phone": "1-253-646-0546",
      "value": "958.00",
      "status": "Rejected",
      "sales": "Victor",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 31,
      "name": "Bradly Orn",
      "email": "rowe.marian@little.com",
      "phone": "+1.929.303.6249",
      "value": "615.00",
      "status": "Converted",
      "sales": "Luisa",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 32,
      "name": "Dr. Alford Predovic V",
      "email": "vleannon@yahoo.com",
      "phone": "+1 (754) 522-1871",
      "value": "949.00",
      "status": "Rejected",
      "sales": "Luisa",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 33,
      "name": "Anastasia Upton V",
      "email": "amie.abbott@weimann.com",
      "phone": "+1.865.987.3330",
      "value": "603.00",
      "status": "Rejected",
      "sales": "Ilene",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 34,
      "name": "Justice Prohaska",
      "email": "baby38@gmail.com",
      "phone": "(320) 606-5445",
      "value": "853.00",
      "status": "Lost",
      "sales": "Otilia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 35,
      "name": "Eula Lowe I",
      "email": "charity45@hotmail.com",
      "phone": "+1.248.606.5628",
      "value": "746.00",
      "status": "New",
      "sales": "Noelia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 36,
      "name": "Davon Halvorson I",
      "email": "karelle82@muller.org",
      "phone": "+1 (615) 953-5801",
      "value": "677.00",
      "status": "Rejected",
      "sales": "Hugh",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 37,
      "name": "Braeden Sauer",
      "email": "howe.richard@gmail.com",
      "phone": "+1-864-461-5612",
      "value": "764.00",
      "status": "New",
      "sales": "Bethany",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 38,
      "name": "Dr. Rosetta Watsica MD",
      "email": "rafael60@yahoo.com",
      "phone": "(930) 987-0608",
      "value": "938.00",
      "status": "Qualified",
      "sales": "Noelia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 39,
      "name": "Dr. Modesto Berge",
      "email": "vkling@gmail.com",
      "phone": "701-476-8250",
      "value": "651.00",
      "status": "Contacted",
      "sales": "Noelia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 40,
      "name": "Ollie Leannon",
      "email": "lschulist@gmail.com",
      "phone": "+1.858.801.1514",
      "value": "990.00",
      "status": "Lost",
      "sales": "Britney",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 41,
      "name": "Joy Reichel",
      "email": "jhill@yahoo.com",
      "phone": "+16787967662",
      "value": "724.00",
      "status": "Rejected",
      "sales": "Rosie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 42,
      "name": "Darron Block",
      "email": "mariano.wunsch@gmail.com",
      "phone": "+1 (956) 981-8354",
      "value": "792.00",
      "status": "Qualified",
      "sales": "Ilene",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 43,
      "name": "Michele Abbott",
      "email": "von.sydni@okuneva.net",
      "phone": "949.992.3401",
      "value": "795.00",
      "status": "Lost",
      "sales": "Colton",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 44,
      "name": "Mrs. Alexandria Kuphal",
      "email": "chadd.russel@oconner.net",
      "phone": "+1.662.989.7731",
      "value": "758.00",
      "status": "New",
      "sales": "Jane",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 45,
      "name": "Deron Treutel III",
      "email": "wolf.reid@hotmail.com",
      "phone": "(480) 485-6268",
      "value": "686.00",
      "status": "Contacted",
      "sales": "Sunny",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 46,
      "name": "Linnie Effertz Sr.",
      "email": "von.tamara@schultz.info",
      "phone": "+1 (346) 248-7397",
      "value": "608.00",
      "status": "Lost",
      "sales": "Jake",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 47,
      "name": "Magali Torphy DDS",
      "email": "gkub@ankunding.org",
      "phone": "580-695-1543",
      "value": "968.00",
      "status": "New",
      "sales": "Sasha",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 48,
      "name": "Casimer Hermiston",
      "email": "kole.leffler@hotmail.com",
      "phone": "+12522554168",
      "value": "621.00",
      "status": "Lost",
      "sales": "Luisa",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 49,
      "name": "Mr. Garth Walker DVM",
      "email": "shakira14@yahoo.com",
      "phone": "1-971-827-1700",
      "value": "777.00",
      "status": "Qualified",
      "sales": "Elisha",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 50,
      "name": "Hannah Grady III",
      "email": "lindgren.cristobal@hotmail.com",
      "phone": "+1 (386) 333-5278",
      "value": "605.00",
      "status": "New",
      "sales": "Sunny",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 51,
      "name": "Lilian Wisozk",
      "email": "strosin.winona@jacobson.com",
      "phone": "469.505.4495",
      "value": "912.00",
      "status": "Qualified",
      "sales": "Ilene",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 52,
      "name": "Destini Nienow",
      "email": "wuckert.vivian@yahoo.com",
      "phone": "623-344-4815",
      "value": "789.00",
      "status": "New",
      "sales": "Britney",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 53,
      "name": "Miss Bridget Conroy DVM",
      "email": "carrie.stehr@larkin.com",
      "phone": "458.327.4156",
      "value": "644.00",
      "status": "Converted",
      "sales": "Otilia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 54,
      "name": "Meda Oberbrunner II",
      "email": "lynch.jamaal@buckridge.com",
      "phone": "+1.931.712.3097",
      "value": "851.00",
      "status": "Qualified",
      "sales": "Brooke",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 55,
      "name": "Shanie Lueilwitz",
      "email": "skylar.rohan@yahoo.com",
      "phone": "+1-854-713-6167",
      "value": "804.00",
      "status": "Lost",
      "sales": "Noelia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 56,
      "name": "Ms. Alejandra Will Jr.",
      "email": "lavinia78@wilkinson.com",
      "phone": "1-534-619-6004",
      "value": "758.00",
      "status": "Contacted",
      "sales": "Lilla",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 57,
      "name": "Cristal Gutkowski",
      "email": "pcorwin@thiel.com",
      "phone": "1-507-993-1334",
      "value": "877.00",
      "status": "Contacted",
      "sales": "Luisa",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 58,
      "name": "Hilton Wunsch IV",
      "email": "dahlia.bashirian@kessler.com",
      "phone": "+1 (352) 264-2575",
      "value": "653.00",
      "status": "New",
      "sales": "Jake",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 59,
      "name": "Ms. Lilyan Pollich",
      "email": "grace95@waters.com",
      "phone": "(989) 805-4371",
      "value": "953.00",
      "status": "Lost",
      "sales": "Clement",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 60,
      "name": "Raymond Kuvalis",
      "email": "mohr.maude@hotmail.com",
      "phone": "(872) 987-5991",
      "value": "698.00",
      "status": "Rejected",
      "sales": "Rosie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 61,
      "name": "Dr. Marc Veum",
      "email": "nya45@yahoo.com",
      "phone": "+1 (225) 900-0232",
      "value": "699.00",
      "status": "Rejected",
      "sales": "Bethany",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 62,
      "name": "Kenneth Huels I",
      "email": "krystel14@schmitt.com",
      "phone": "+1.820.438.5326",
      "value": "761.00",
      "status": "Lost",
      "sales": "Vaughn",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 63,
      "name": "Dr. Branson Dicki",
      "email": "tia.kuhlman@little.com",
      "phone": "+1.414.935.7614",
      "value": "919.00",
      "status": "Contacted",
      "sales": "Arnaldo",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 64,
      "name": "Filomena Murphy",
      "email": "dmiller@hotmail.com",
      "phone": "+1-724-656-9581",
      "value": "976.00",
      "status": "Converted",
      "sales": "Otilia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 65,
      "name": "Fabian Adams",
      "email": "ylang@boyle.net",
      "phone": "+1-254-789-6064",
      "value": "810.00",
      "status": "Lost",
      "sales": "Arnaldo",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 66,
      "name": "Marcellus Oberbrunner",
      "email": "leanne.sauer@nader.com",
      "phone": "442.945.0504",
      "value": "688.00",
      "status": "Converted",
      "sales": "Dominic",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 67,
      "name": "Celia Muller",
      "email": "tschroeder@turner.com",
      "phone": "(520) 605-5983",
      "value": "921.00",
      "status": "Rejected",
      "sales": "Jane",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 68,
      "name": "Shakira Murphy",
      "email": "candace02@yahoo.com",
      "phone": "+1-272-579-2826",
      "value": "608.00",
      "status": "Lost",
      "sales": "Hermann",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 69,
      "name": "Douglas Legros II",
      "email": "lfriesen@marvin.com",
      "phone": "224.887.5676",
      "value": "994.00",
      "status": "Rejected",
      "sales": "Rosie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 70,
      "name": "Niko Berge",
      "email": "mills.tyrese@hotmail.com",
      "phone": "573.375.4792",
      "value": "671.00",
      "status": "Contacted",
      "sales": "Jake",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 71,
      "name": "Eleanore Conn",
      "email": "victoria.gottlieb@kautzer.org",
      "phone": "+1 (351) 287-8392",
      "value": "883.00",
      "status": "Qualified",
      "sales": "Vaughn",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 72,
      "name": "Alva Botsford",
      "email": "xjerde@yahoo.com",
      "phone": "+1-617-540-8442",
      "value": "657.00",
      "status": "Qualified",
      "sales": "Ervin",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 73,
      "name": "Christopher Murazik",
      "email": "xschoen@gmail.com",
      "phone": "762-943-0727",
      "value": "754.00",
      "status": "Contacted",
      "sales": "Kaitlyn",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 74,
      "name": "Jordan Ryan",
      "email": "merle64@wolf.com",
      "phone": "+1.603.780.8576",
      "value": "813.00",
      "status": "Converted",
      "sales": "Ilene",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 75,
      "name": "Dr. Camren Bednar MD",
      "email": "treutel.sanford@daugherty.com",
      "phone": "1-269-680-8206",
      "value": "997.00",
      "status": "Contacted",
      "sales": "Britney",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 76,
      "name": "Alyce Kessler DDS",
      "email": "juston79@cole.com",
      "phone": "319-765-3533",
      "value": "806.00",
      "status": "New",
      "sales": "Jane",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 77,
      "name": "Augusta Gutmann",
      "email": "schroeder.cale@yahoo.com",
      "phone": "1-772-363-0240",
      "value": "634.00",
      "status": "Qualified",
      "sales": "Billie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 78,
      "name": "Mr. Greg Dickens",
      "email": "sbosco@gmail.com",
      "phone": "(209) 490-7505",
      "value": "858.00",
      "status": "Lost",
      "sales": "Lilla",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 79,
      "name": "Rowan Shields",
      "email": "hodkiewicz.tomas@hotmail.com",
      "phone": "(351) 246-7990",
      "value": "910.00",
      "status": "Contacted",
      "sales": "Billie",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 80,
      "name": "Dr. Marquis McDermott",
      "email": "dora14@lockman.com",
      "phone": "364.218.3073",
      "value": "961.00",
      "status": "New",
      "sales": "Elisha",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 81,
      "name": "Howell Hansen DDS",
      "email": "greyson.towne@gmail.com",
      "phone": "925-734-2680",
      "value": "858.00",
      "status": "Lost",
      "sales": "Kitty",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 82,
      "name": "Hassan Stark IV",
      "email": "ferne92@skiles.com",
      "phone": "(754) 308-6941",
      "value": "904.00",
      "status": "New",
      "sales": "Kiley",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 83,
      "name": "Sylvia Gorczany II",
      "email": "kuhn.reid@ritchie.com",
      "phone": "1-423-679-7138",
      "value": "864.00",
      "status": "Lost",
      "sales": "Dominic",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 84,
      "name": "Silas Nolan III",
      "email": "daphnee.deckow@yahoo.com",
      "phone": "+1.959.614.9864",
      "value": "843.00",
      "status": "Lost",
      "sales": "Luisa",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 85,
      "name": "Madonna Renner",
      "email": "spencer.johnson@gmail.com",
      "phone": "628-570-9694",
      "value": "783.00",
      "status": "New",
      "sales": "Madisen",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 86,
      "name": "Christa Beier DVM",
      "email": "josiah.ohara@hermann.biz",
      "phone": "+1-470-813-3358",
      "value": "796.00",
      "status": "New",
      "sales": "Kiley",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 87,
      "name": "Mrs. Karlee Zieme",
      "email": "cruickshank.alfred@gmail.com",
      "phone": "385.966.3652",
      "value": "866.00",
      "status": "Qualified",
      "sales": "Lilla",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 88,
      "name": "Ignatius Keeling III",
      "email": "schiller.fleta@yahoo.com",
      "phone": "+1 (949) 252-8330",
      "value": "961.00",
      "status": "New",
      "sales": "Elisha",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 89,
      "name": "Miss Linnie Crona",
      "email": "wjones@gusikowski.com",
      "phone": "+1-941-369-0665",
      "value": "624.00",
      "status": "Qualified",
      "sales": "Victor",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 90,
      "name": "Dr. Theresa Murphy",
      "email": "koelpin.mable@gmail.com",
      "phone": "(405) 439-7236",
      "value": "996.00",
      "status": "New",
      "sales": "Rocky",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 91,
      "name": "Prof. Reginald Wintheiser",
      "email": "dach.corrine@jerde.com",
      "phone": "1-318-838-7970",
      "value": "785.00",
      "status": "Rejected",
      "sales": "Bethany",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 92,
      "name": "Jeffery Marquardt",
      "email": "bernhard.marvin@watsica.net",
      "phone": "+12393504374",
      "value": "853.00",
      "status": "Contacted",
      "sales": "Hugh",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 93,
      "name": "Laron Collier",
      "email": "missouri.gerlach@hotmail.com",
      "phone": "979-598-8606",
      "value": "692.00",
      "status": "Contacted",
      "sales": "Ilene",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 94,
      "name": "Katelynn Rolfson",
      "email": "xstiedemann@homenick.org",
      "phone": "1-737-393-2816",
      "value": "626.00",
      "status": "Contacted",
      "sales": "Madisen",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 95,
      "name": "Leatha Hermann",
      "email": "cordie.funk@hotmail.com",
      "phone": "(859) 409-3606",
      "value": "739.00",
      "status": "Qualified",
      "sales": "Otilia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 96,
      "name": "Miss Gia Weber V",
      "email": "ykassulke@hotmail.com",
      "phone": "+1-341-960-3339",
      "value": "698.00",
      "status": "New",
      "sales": "Kitty",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 97,
      "name": "Cade Pagac",
      "email": "breanne95@willms.biz",
      "phone": "1-305-906-9346",
      "value": "991.00",
      "status": "Contacted",
      "sales": "Jake",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 98,
      "name": "Pietro Volkman",
      "email": "granville31@hotmail.com",
      "phone": "707-436-8997",
      "value": "641.00",
      "status": "Contacted",
      "sales": "Jane",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 99,
      "name": "Mr. Xavier O'Hara",
      "email": "sleuschke@hotmail.com",
      "phone": "281.702.0007",
      "value": "915.00",
      "status": "New",
      "sales": "Arnaldo",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
    {
      "id": 100,
      "name": "Raoul Rosenbaum",
      "email": "lhartmann@hotmail.com",
      "phone": "+1-719-580-4505",
      "value": "763.00",
      "status": "New",
      "sales": "Noelia",
      "created_at": "2023-12-01T07:38:01.000000Z"
    },
  ];

}