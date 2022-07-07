# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing DB..."

Offer.destroy_all
User.destroy_all
District.destroy_all
Category.destroy_all

puts "create 1 and 2 user"

user_1 = User.create!(email: "user@user.de", password: "user@user.de", role: "user")
user_2 = User.create!(email: 'admin@admin.de', password: 'admin@admin.de', role: 'institution')

puts "creating districts..."

#DISTRICTS
district_1 = District.create!(name: "Mitte", longitude: 13.357342, latitude: 52.539862)
district_2 = District.create!(name: "Friedrichshain-Kreuzberg", longitude: 13.431942, latitude: 52.498944)
district_3 = District.create!(name: "Pankow", longitude: 13.425760, latitude: 52.583446)
district_4 = District.create!(name: "Charlottenburg-Wilmersdorf", longitude: 13.268463, latitude: 52.507200)
district_5 = District.create!(name: "Spandau", longitude: 13.203787, latitude: 52.532331)
district_6 = District.create!(name: "Steglitz-Zehlendorf", longitude: 13.193637, latitude: 52.427840)
district_7 = District.create!(name: "Tempelhof-Schöneberg", longitude: 13.370736, latitude: 52.470458)
district_8 = District.create!(name: "Neukölln", longitude: 13.444786, latitude: 52.441937)
district_9 = District.create!(name: "Treptow-Köpenick", longitude: 13.590557, latitude: 52.426818)
district_10 = District.create!(name: "Marzahn-Hellersdorf", longitude: 13.576072, latitude: 52.518867)
district_11 = District.create!(name: "Lichtenberg", longitude: 13.500115, latitude: 52.530481)
district_12 = District.create!(name: "Reinickendorf", longitude: 13.294480, latitude: 52.573411)

puts "creating categorys..."

category_1 = Category.create!(name: "Children & Adolescents", image: 'https://www.hopkinsmedicine.org/-/media/images/health/3_-wellness/kids-and-teens-health/growing-child-adolescent-teaser.ashx')
category_2 = Category.create!(name: "Seniors", image: 'https://www.retireguide.com/wp-content/uploads/guide_benefits-seniors.jpg')
category_3 = Category.create!(name: "People with special needs", image: 'https://www.pathwaysofpa.com/wp-content/uploads/2018/04/4-25-18-PW-Depositphotos_183579996_m-2015-min.jpeg')
category_4 = Category.create!(name: "LGBTQ", image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Gay_Pride_Flag.svg/1200px-Gay_Pride_Flag.svg.png')
category_5 = Category.create!(name: "Refugee background", image: 'https://www.unhcr.org/thumb3/5e8dfa294.jpg')
category_6 = Category.create!(name: "Nature", image: 'https://www.museumfuernaturkunde.berlin/sites/default/files/naturmetropole-berlin-fuehrung.jpg')
category_7 = Category.create!(name: "Everyone is welcome", image: 'american-dad.png')
category_8 = Category.create!(name: "Others", image: 'https://www.ishn.com/ext/resources/Issues/2018/05-May/ISHN0518_C5_pic.jpg?height=635&t=1525287114&width=1200')

# puts "Creating 10 Offers..."

offer_1 = Offer.create!(user: user_1, district: district_10, title: "Lesepaten in der Schule", address: "Kienbergstr. 59, 12685 Berlin", description: "Der Schwerpunkt der Grundschule an der Mühle ist es, die deutsche Sprache in Wort und Schrift zu vermitteln.Hier können Sie als Freiwillge*r  zusammen mit den Kindern lesen parallel zum Unterricht.Sie helfen als Freiwilliger mit die Leseleistung der Kinder zu verbessern.", email: "kontakt@fwa-mh.de")

offer_catgory_1 = OfferCategory.new
offer_catgory_1.offer = offer_1
offer_catgory_1.category = category_1
offer_catgory_1.save!

offer_2 = Offer.create!(user: user_1, district: district_10, title: "Gardening, building and sewing together", address: "Otto-Rosenberg-Str. 6, 12681 Berlin", description: "Open factory premises in Berlin-Marzahn Stadtwerk mrzn is an open and experimental construction site. We are  building a local and international future laboratory directly at Otto-Rosenberg-Platz, full of variety and full of visions. Outside and together. With craftsmen, architects, artists and gardeners, young and older people, new and long-established neighbors, initiatives and associations create common ideas for open spaces, new work perspectives and community urban development. We look forward to fellow campaigners who garden with us, water the plants, build small wooden structures or are interested in cooking.", email: "kontakt@fwa-mh.de")

offer_catgory_2 = OfferCategory.new
offer_catgory_2.offer = offer_2
offer_catgory_2.category = category_6
offer_catgory_2.category = category_1
offer_catgory_2.save!

offer_3 = Offer.create!(user: user_1, district: district_2, title: "Enlightened and informed: consumer protection in the quarter", address: "Oranienstrasse 53 , 10969 Berlin", description: "Participate in up to 5 training courses on central aspects of consumer protection. The training courses set quality standards for the multipliers, provide information on the legal basis of consumer protection, convey the content of the central topics of consumer protection and are always geared towards the practice of conveying information to the multipliers. The multipliers will then independently provide information on consumer protection issues in their communities.", email: "kontakt@fwa-mh.de")

offer_catgory_3 = OfferCategory.new
offer_catgory_3.offer = offer_3
offer_catgory_3.category = category_2
offer_catgory_3.save!

offer_4 = Offer.create!(user: user_1, district: district_10, title: "Guitar music and electric piano", address: "Louis-Lewin-Strasse 40C , 12627 Berlin", description: "In the facility, many events are planned and carried out with the children and young people. A guitar / electric piano player is needed for the cultural background at the campfire, Martin's parade, Walpurgis night, summer party, and much more. Courses can also be offered if the mood takes you.", email: "kontakt@fwa-mh.de")

offer_catgory_4 = OfferCategory.new
offer_catgory_4.offer = offer_4
offer_catgory_4.category = category_7
offer_catgory_4.save!

offer_5 = Offer.create!(user: user_1, district: district_10, title: "Maintaining our own garden", address: "Märkische Allee 68 , 12681 Berlin", description: "n cooperation with our house technician, volunteers are needed for the maintenance of our well-tended garden, such as B. Mow the lawn, water flowers, remove leaves. Anyone who enjoys working in the garden is welcome. We are happy to support other general activities in cooperation with our in-house technician.", email: "kontakt@fwa-mh.de")

offer_catgory_5 = OfferCategory.new
offer_catgory_5.offer = offer_5
offer_catgory_5.category = category_7
offer_catgory_5.save!

offer_6 = Offer.create!(user: user_1, district: district_10, title: "Support for trainees", address: "Großbeerenstr. 2-10, building 3, 12107 Berlin", description: "Accompany trainees during their training; Help you to successfully complete the training you have started; Motivate and strengthen participants, stabilize them, if necessary, tutoring. Volunteers are needed for this. If interested, organizational support in the implementation of project events. Use according to your own ideas and skills as well as the needs of the participants", email: "kontakt@fwa-mh.de")

offer_catgory_6 = OfferCategory.new
offer_catgory_6.offer = offer_6
offer_catgory_6.category = category_7
offer_catgory_6.save!

offer_7 = Offer.create!(user: user_1, district: district_10, title: "Homework help for children", address: "Rudolf-Leonhard-Str. 13 , 12679 Berlin", description: " The volunteers, together with a specialist, should support children with various homework (reading, writing, math ...). ", email: "kontakt@fwa-mh.de")

offer_catgory_7 = OfferCategory.new
offer_catgory_7.offer = offer_7
offer_catgory_7.category = category_1
offer_catgory_7.save!

offer_8 = Offer.create!(user: user_1, district: district_4, title: "Reading sponsorships", address: "Schillerstraße 59 , 10627 Berlin", description: "The reading mentors are involved in schools and day-care centers to convey enthusiasm for reading. In 1: 1 sponsorships or in small groups, the sponsors read exciting stories with the children. There are also reading sponsorships for older people in senior citizens' facilities. In addition to actively reading aloud, time and enthusiasm should be given. You can get involved in the Marzahn-Hellersdorf district.", email: "kontakt@fwa-mh.de")

offer_catgory_8 = OfferCategory.new
offer_catgory_8.offer = offer_8
offer_catgory_8.category = category_1
offer_catgory_8.save!

offer_9 = Offer.create!(user: user_1, district: district_3, title:"Assistance in building nesting boxes", address: "Wollankstrasse 4, 13187 Berlin", description: "Provided you are interested in and have a certain experience in dealing with woodwork, you can volunteer to support nature conservation with the construction of nest boxes and with occasional caretaker activities. - Two to five hours per week or depending on demand / availability - Participation in a monthly team meeting and company outings, committed environment, other offers at www.nabu.de.", email: "kontakt@fwa-mh.de")

offer_catgory_9 = OfferCategory.new
offer_catgory_9.offer = offer_9
offer_catgory_9.category = category_6
offer_catgory_9.save!

offer_10 = Offer.create!(user: user_1, district: district_11, title: "Unterstützung in der Büroarbeit", address: "Alfred-Jung-Str.17, 10367 Berlin", description: "Der Zentrale Fahrbare Mittagstisch benötigt für das Büro freiwillige Unterstützung. Vorbereitung von Materialien für die Fahrer, Postbearbeitung , Fax- und Kopierarbeiten, Jubiläumsgeschenke für Kunden packen;", email: "kontakt@fwa-mh.de")

offer_catgory_10 = OfferCategory.new
offer_catgory_10.offer = offer_10
offer_catgory_10.category = category_2
offer_catgory_10.save!

offer_11 = Offer.create!(user: user_1, district: district_9, title: "Ambulanter Hospizdienst", address: "Treskowallee 110, 10318 Berlin", description: "Der Malteser Hilfsdienst ist eine der großen Hilfsorganisationen in Deutschland. Die HelferInnen engagieren sich im Katastrophenschutz, Hospizarbeit, Demenzbetreuung, Unterstützung von Familien und Kindern oder Menschen ohne Krankenversicherung.", email: " hospiz.berlin@malteser.org")

offer_catgory_11 = OfferCategory.new
offer_catgory_11.offer = offer_11
offer_catgory_11.category = category_2
offer_catgory_11.save!

offer_12 = Offer.create!(user: user_1, district: district_11, title: "Anleitung der AG Schach", address: "Alfred-Jung-Str.17, 10367 Berlin", description: "Um das Freizeitangebot für die Schüler noch zu verbessern, sucht die Einrichtung für die AG Schach freiwillige Unterstützung. Die Freiwillige / der Freiwillige sollte Spaß am Schachspielen haben und seine Schachkenntnisse auch an die Schüler weitergeben können", email: "kontakt@fwa-mh.de")

offer_catgory_12 = OfferCategory.new
offer_catgory_12.offer = offer_12
offer_catgory_12.category = category_7
offer_catgory_12.save!

offer_14 = Offer.create!(user: user_1, district: district_10, title: "Begleitdienst / Fahrdienst Arzt", address: "Märkische Allee 68, 12681 Berlin", description: "Wer hat Lust und Zeit bei Bedarf (manchmal kurzfristig)unsere Bewohner zu verschiedenen Ärzten oder zu Behandlungen zu begleiten? Manchmal ist es auch ein Besuch auf dem Friedhof.  Ein Kleinbus steht zur Verfügung.", email: "kontakt@fwa-mh.de")

offer_catgory_14 = OfferCategory.new
offer_catgory_14.offer = offer_14
offer_catgory_14.category = category_2
offer_catgory_14.save!

offer_15 = Offer.create!(user: user_1, district: district_10, title: "Begleitung bei Behördengängen", address: "Alt - Biesdorf 15, 12683 Berlin", description: "Wenn Sie Geflüchtete Menschen bei diversen Behördengängen begleiten möchten, sind Sie hier genau richtig.", email: "kontakt@fwa-mh.de")


offer_catgory_15 = OfferCategory.new
offer_catgory_15.offer = offer_15
offer_catgory_15.category = category_5
offer_catgory_15.save!

offer_16 = Offer.create!(user: user_1, district: district_10, title: "Accompaniment to events", address: "GU Paul-Schwenk-Strasse 3 - 21 , 12685 Berlin", description: "Our residents would like to take part in various events from time to time, but they don't dare to go it alone or are demotivated to go alone. It would be great to find someone to accompany you on the way. Whether it should only be the way there can be discussed in a conversation. ", email: "kontakt@fwa-mh.de")


offer_catgory_16 = OfferCategory.new
offer_catgory_16.offer = offer_16
offer_catgory_16.category = category_7
offer_catgory_16.save!

offer_17 = Offer.create!(user: user_1, district: district_1, title: "Assistance in drum courses for people with / without disabilities", address: "Jüdenstrasse 1,10178 Berlin", description: "We are looking for volunteers to support our course instructors in implementing drum courses for people with and without disabilities. If necessary, they offer help to people with disabilities, interact with them and also take part in the drumming course themselves.", email: "berlin@Gute-Tat.de")


offer_catgory_17 = OfferCategory.new
offer_catgory_17.offer = offer_17
offer_catgory_17.category = category_7
offer_catgory_17.save!

offer_18 = Offer.create!(user: user_1, district: district_10, title: "Visiting service for people in need of care at home", address: "Blumberger Damm 2k , 12683 Berlin", description: "This visiting service takes place to relieve the relatives and to look after those in need of care. We are looking for volunteers to talk to the sick people, encourage them to do their own activities and bring them into the community, joint activities at home, hourly replacement of caring relatives, and joint activities ...
", email: "kontakt@fwa-mh.de")

offer_catgory_18 = OfferCategory.new
offer_catgory_18.offer = offer_18
offer_catgory_18.category = category_3
offer_catgory_18.save!

offer_19 = Offer.create!(user: user_1, district: district_11, title: "Ambulatory hospice service", address: "Treskowallee 110, 10318 Berlin", description: "Psychosocial support for seriously ill and dying people", email: "hospiz.berlin@malteser.org")

offer_catgory_19 = OfferCategory.new
offer_catgory_19.offer = offer_19
offer_catgory_19.category = category_3
offer_catgory_19.save!

offer_20 = Offer.create!(user: user_1, district: district_10, title: "Caregiver for a toddler group for babies from 0-1 years old", address: "Stollberger Straße 35, 12627 Berlin", description: "
In the KastanienNest parent-child café, you will lead a toddler group for babies between 0 and 1 year old, where moms are present and spend quality time together. Singing, playing, being creative, learning - all that is fun for the little ones and good for their development you can plan and carry out.", email: "kontakt@fwa-mh.de")

offer_catgory_20 = OfferCategory.new
offer_catgory_20.offer = offer_20
offer_catgory_20.category = category_1
offer_catgory_20.save!

offer_21 = Offer.create!(user: user_1, district: district_10, title: "Accompaniment for swimming", address: "Allee der Kosmonauten 69, 12681 Berlin", description: "The therapeutic assisted living (TBW) association is a form of assistance for 30 mentally ill people who live in their own apartment in the Marzahn district. Many of the residents need help in coping with daily life. For example, it is necessary for groups of mentally ill people to be accompanied to swimming. Volunteers are needed for this.
", email: "kontakt@fwa-mh.de")

offer_catgory21 = OfferCategory.new
offer_catgory21.offer = offer_21
offer_catgory21.category = category_3
offer_catgory21.save!

offer_22 = Offer.create!(user: user_1, district: district_10, title: "Companion in our daycare center Parabel in Marzahn", address: "Gutenbergstraße 25, 12621 Berlin", description: "We are looking for a nice, outgoing, open person for our daycare center in Marzahn, who is a good listener and supports our Sunday games and activities. The focus of the work is to create a daily structure for visitors who live in their own apartments or in a therapeutic residential community. Based on this, we jointly design various everyday offers and activities. The aim of these employment opportunities is to promote existing abilities and skills and to acquire new ones. In addition, social skills are to be strengthened in order to gradually enable independent living.", email: "k.bauerreiss@gute-tat.de")

offer_catgory_22 = OfferCategory.new
offer_catgory_22.offer = offer_22
offer_catgory_22.category = category_3
offer_catgory_22.save!

offer_23 = Offer.create!(user: user_1, district: district_3, title: "Accompanying offenders in Berlin prisons", address: "Schönhauser Allee 141, 10437 Berlin-Prenzlauer Berg", description: "There are many opportunities to get involved with delinquents, both inside and outside: Prayer meetings for the prison in Berlin, letter contacts with prisoners, accompaniment of individual prisoners Collaboration in small groups (discussion, Bible, hobby groups, participation and collaboration in church services Establishment and assistance in a contact, meeting and counseling center for delinquent people and their families. Christians who are interested in helping out are invited to a contact meeting. Afterwards, initial information and guidelines for service in the penal system are provided. Staff members have contacts in the various ministry areas. If you are interested, please contact us!", email: "charisma-info@dwbo.de")

offer_catgory_23 = OfferCategory.new
offer_catgory_23.offer = offer_23
offer_catgory_23.category = category_3
offer_catgory_23.save!

offer_24 = Offer.create!(user: user_1, district: district_2, title: "Housing for women seeks flexible painters", address: "Modersohnstraße 65, 10245 Berlin", description: "We are a shelter for women who are threatened or affected by homelessness. The small rooms of the female residents need to be painted from time to time. For this we would like a professional good execution including masking and covering the surfaces. The rooms are about 15m² in size and should be able to be reoccupied as soon as possible. Unfortunately, as spontaneous as our needs are, we do not have the necessary craftsmen available. Paint and all other materials are of course available.", email: "k.bauerreiss@gute-tat.de")
offer_catgory_24 = OfferCategory.new
offer_catgory_24.offer = offer_24
offer_catgory_24.category = category_8
offer_catgory_24.save!

# offer_18e!( = Offer.creatuser: user_1, district: district_10, title: "Visiting service for people in need of care at home", address: "Blumberger Damm 2k , 12683 Berlin", description: "This visiting service takes place to relieve the relatives and to look after those in need of care. We are looking for volunteers to talk to the sick people, encourage them to do their own activities and bring them into the community, joint activities at home, hourly replacement of caring relatives, and joint activities ...
# ", email: "kontakt@fwa-mh.de")

# offer_catgory_18 = OfferCategory.new
# offer_catgory_18.offer = offer_18
# offer_catgory_18.category = category_3
# offer_catgory_18.save!


# puts "Done!"

# puts "seed offer_categories"

offer_25 = Offer.create!(user: user_1, district: district_8, title: "1:1 mentoring for students", address: "Karl-Marx-Platz 20 , 12043 Berlin", description: "1: 1 accompaniment of a pupil from grades 8-10 of a Neukölln Integrated Secondary School (ISS), weekly meetings approx. 1.5-2 hours in the afternoon / early evening in Neukölln project rooms; Work on school-related topics, professional orientation, role model, development of a sustainable follow-up perspective after graduation", email: "kontakt@fwa-mh.de")
offer_catgory_25 = OfferCategory.new
offer_catgory_25.offer = offer_25
offer_catgory_25.category = category_1
offer_catgory_25.save!

offer_26 = Offer.create!(user: user_1, district: district_3, title: "Editorial & Social Media Assistance", address: "Prenzlauer Allee 90, 10409 Berlin", description: "Make voluntary engagement visible: write small articles for the website, blog and we for Berlin e.g. https://blog.unionhilfswerk.de/menschen/hospiz-arbeit-trotz-covid-19/ Help create posts and stories for Instagram + Facebook", email: "kontakt@fwa-mh.de")
offer_catgory_26 = OfferCategory.new
offer_catgory_26.offer = offer_26
offer_catgory_26.category = category_8
offer_catgory_26.save!

offer_27 = Offer.create!(user: user_1, district: district_10, title: "Support for the puppet theater (61217)", address: "Stollberger Str. 37, 12627 Berlin", description: "Do you have the feeling of having an entertaining time surrounded by people and dolls? Then the door of the 'Hellersdorfer Figur Theater' is open for you every Wednesday from 9:00 a.m. to 4:00 p.m. We would be very happy to get to know you exactly. You will receive further information on site.", email: "kontakt@fwa-mh.de")
offer_catgory_26 = OfferCategory.new
offer_catgory_26.offer = offer_27
offer_catgory_26.category = category_1
offer_catgory_26.save!

offer_28 = Offer.create!(user: user_1, district: district_8, title: "Sponsorship opportunities and mentoring", address: "Goldammerstr. 34, 12351 Berlin", description: "Mentoring makes you strong! As a mentor, you will help shape society on a small scale and help to open up opportunities. Accompany people in need of support 1: 1: children, young people, single parents, refugees, people with disabilities. The topics are diverse, e.g. For example: spending your free time, looking for an apartment, looking for an apprenticeship or job, language tandem, tutoring, and much more. You and your mentee determine the focus according to your needs and interests. What should you bring with you as a mentor? Empathy and openness, commitment and reliability, but above all: Enjoyment in dealing with people. Contact us for a first non-binding consultation.", email: "kontakt@fwa-mh.de" )
offer_catgory_28 = OfferCategory.new
offer_catgory_28.offer = offer_28
offer_catgory_28.category = category_1
offer_catgory_28.save!

offer_29 = Offer.create!(user: user_1, district: district_2, title: "Spreepaten", address: "Thaerstr 30d, 10249 Berlin", description: "As a Spreepate, you are the contact person and person of trust for a young person who has fled the country. You support and accompany a young person between 18 and 25 years of age on their way to adulthood. Every 'tandem' is different and yet most of them have similar questions: How do you make the transition from school to training? How does it work with the residence security? How does it work with the authorities in Germany? How do you find an apartment in Berlin? Where can you find great leisure activities that cost little? Even sponsors can't - and don't have to - know everything!", email: "kontakt@fwa-mh.de")
offer_catgory_29 = OfferCategory.new
offer_catgory_29.offer = offer_29
offer_catgory_29.category = category_5
offer_catgory_29.save!

offer_30 = Offer.create!(user: user_1, district: district_10, title: "Office assistant", address: "Kummerower Ring 42, 12619 Berlin", description: "General office activities such as filing, file management and database maintenance, organization and administration of office material, taking minutes at meetings and events, data maintenance and preparation of advertising materials and their dissemination.", email: "kontakt@fwa-mh.de")
offer_catgory_30 = OfferCategory.new
offer_catgory_30.offer = offer_30
offer_catgory_30.category = category_8
offer_catgory_30.save!

offer_31 = Offer.create!(user: user_1, district: district_10, title: "Support in the leisure café", address: "Hellersdorfer Promenade 13, 12627 Berlin", description: "The institution would be happy to receive active support through volunteer work for accompanying the open café operation or for guiding and implementing courses. It always takes place on Wednesdays from 3 p.m. to 6 p.m.", email: "kontakt@fwa-mh.de")
offer_catgory_31 = OfferCategory.new
offer_catgory_31.offer = offer_31
offer_catgory_31.category = category_7
offer_catgory_31.save!

offer_32 = Offer.create!(user: user_1, district: district_7, title: "Participation in care for the elderly", address: "Albrechtstrasse 103/104 , 12103 Berlin", description: "The facility is an outpatient integrative senior center run by an association in the north of Berlin. There are various areas in the facility, such as a laundry café, a spacious garden and a geriatric day care facility (physical, mental and emotional illness). We are looking for volunteers to support these areas.", email: "kontakt@fwa-mh.de")
offer_catgory_32 = OfferCategory.new
offer_catgory_32.offer = offer_32
offer_catgory_32.category = category_2
offer_catgory_32.save!

offer_33 = Offer.create!(user: user_1, district: district_8, title: "Assistance in the hospital church", address: "Alt-Marzahn 59A , 12685 Berlin", description: "The hospital church in Marzahn serves as a place of worship, culture and meeting place. As a volunteer, you can support the facility during opening hours and at events.", email: "kontakt@fwa-mh.de")
offer_catgory_33 = OfferCategory.new
offer_catgory_33.offer = offer_33
offer_catgory_33.category = category_8
offer_catgory_33.save!

offer_34 = Offer.create!(user: user_1, district: district_10, title: "Tutoring and learning support for various subjects", address: "Martha-Arendsee-Str 15, 12681 Berlin", description: "The Victor-Klemperer-Kolleg is a general education school whose student body consists almost exclusively of (young) adults. Some colleagues find it a little more difficult to learn and therefore would like support in the form of homework help or tutoring in different subjects. We are looking for volunteers who can support our colleagues once or twice a week. In terms of time, the commitment can be arranged flexibly in individual consultation with the colleagues. The tutoring can take place online, outside or as agreed. Meetings in the school house are currently not possible. Feel free to contact us and tell us in which subjects you could support. We're looking forward for your help!", email: "kontakt@fwa-mh.de")
offer_catgory_34 = OfferCategory.new
offer_catgory_34.offer = offer_34
offer_catgory_34.category = category_1
offer_catgory_34.save!

offer_35 = Offer.create!(user: user_1, district: district_10, title: "Craftsman helpers", address: "Senftenberger Str. 10, 12627 Berlin", description: "A leisure facility in Hellersdorf is looking for voluntary support for children and young people with the maintenance and repair of their roller sports equipment (bicycles, inline skates), rental of roller sports equipment owned by the club and care and maintenance, if necessary help with minor repairs on the facility (woodwork).", email: "kontakt@fwa-mh.de")
offer_catgory_35 = OfferCategory.new
offer_catgory_35.offer = offer_35
offer_catgory_35.category = category_1
offer_catgory_35.save!

offer_36 = Offer.create!(user: user_1, district: district_10, title: "wellcome - Practical help after the birth", address: "Zühlsdorfer Str.16/18, 12679 Berlin", description: "wellcome teams support families with babies during the first year of life: Volunteers help parents who need relief. Most of this takes place in the family's home and, by arrangement, at another location.", email: "kontakt@fwa-mh.de")
offer_catgory_36 = OfferCategory.new
offer_catgory_36.offer = offer_36
offer_catgory_36.category = category_1
offer_catgory_36.save!

offer_37 = Offer.create!(user: user_1, district: district_10, title: "Establishing a regular men's group", address: "Märkische Allee 69, 12681 Berlin", description: "Which man has lust 1 - 2 times a month. to carry out a 'mens round' independently? Of course, we actively help with planning and implementation. Almost 30 men currently live in our house. The employment offers are mostly 'women-oriented'. A brainstorming session with our men was carried out 2 weeks ago. You want, for example, excursions, oriental dance performances, interesting lectures, games only for men, evenings by the fire (fire bowl) and maybe a barbecue, ectr. We need someone who is the first point of contact. A second helper is already there! The residents look forward to volunteers who can implement and organize the men's collection of ideas.", email: "kontakt@fwa-mh.de")
offer_catgory_37 = OfferCategory.new
offer_catgory_37.offer = offer_37
offer_catgory_37.category = category_7
offer_catgory_37.save!

offer_38 = Offer.create!(user: user_1, district: district_10, title: "Reading mentors for kindergarten children", address: "Murtzaner Ring 70-72, 12681 Berlin", description: "In our new day care center, children are lovingly and responsibly cared for until they start school. A volunteer is needed to read exciting stories to the children.", email: "kontakt@fwa-mh.de")
offer_catgory_38 = OfferCategory.new
offer_catgory_38.offer = offer_38
offer_catgory_38.category = category_1
offer_catgory_38.save!

offer_39 = Offer.create!(user: user_1, district: district_10, title: "Pure broadening of horizons: Volunteers wanted", address: "Flämingstr. 122, 12689 Berlin", description: "urbane. Institute for intercultural political education invites you to discover the world in front of the door, next door and in the distance and to grow with it. Our focus is on current social issues, which we consider from different perspectives as far as possible. We offer suggestions so that everyone can form their own opinion and have a say. We often associate this with art and free theater. So the joy is not neglected. In addition to our activities in Berlin-Marzahn, we work with partner institutions across Europe. Together we develop educational offers, for example freely accessible learning platforms, and learn from each other. Cooperation also lives from encounter. We are looking for volunteers for this. We are looking for you. This has to be done: Participation in the organization and implementation of five-day transnational encounters with people from Spain, Italy, Romania, Greece, France and other countries. The next encounters will take place on the topics of museums - open to everyone: July 2021, women's perspectives on social divisions: August 2021, climate change: September 2021. Office activities: creating folders, keeping lists, creating name tags, etc., provision of drinks and snacks, accompanying small groups through Berlin, supporting the participants with organizational issues (e.g. Covid tests). All meetings take place in English - in the colors of Europe. This is what we offer: meeting interesting people from other countries (sometimes it turns into friendships), rediscovering Berlin,", email: "kontakt@fwa-mh.de")
offer_catgory_39 = OfferCategory.new
offer_catgory_39.offer = offer_39
offer_catgory_39.category = category_7
offer_catgory_39.save!

offer_40 = Offer.create!(user: user_1, district: district_10, title: "Family friends project", address: "Alte-Hellersdorfer-Str. 77, 12629 Berlin", description: "Would you like to support young families in everyday life and provide them with advice and assistance? Then this project is the right place for you. A social institution is looking for volunteers who regularly take the time to look after children, read to them, go for a walk with them or pick them up from daycare. The first contact with the families to be looked after is organized by the facility.", email: "kontakt@fwa-mh.de")
offer_catgory_40 = OfferCategory.new
offer_catgory_40.offer = offer_40
offer_catgory_40.category = category_1
offer_catgory_40.save!

offer_41 = Offer.create!(user: user_1, district: district_10, title: "Communicate and maintain natural knowledge (23641)", address: "Louis-Lewin-Strasse 40C, 12627 Berlin", description: "The children and adolescents often spend the whole afternoon in the youth recreational facility. The facility has a small garden with herbs and vegetables. In the leisure area - knitting - crocheting - sewing - chess and skat are taught. We are looking for a volunteer who can impart knowledge of nature to the children and young people and who can pass on basic knowledge and skills.", email: "kontakt@fwa-mh.de")
offer_catgory_41 = OfferCategory.new
offer_catgory_41.offer = offer_41
offer_catgory_41.category = category_6
offer_catgory_41.save!

offer_43 = Offer.create!(user: user_1, district: district_1, title: "Voluntary reader for Lesewelt Berlin eV", address: "Turmstraße 75, 10551 Berlin", description: "As a reader, you meet with other readers once a week for one hour in order to look at picture books with children in public institutions, such as libraries, schools, kindergartens, to read from children's books or, if the children can already read, to listen to the children reading aloud. People read, explain, tell, laugh and listen. Since the main thing is to awaken the joy of reading in the children, puzzles and painting are also used if the children's concentration drops early.", email: "kontakt@fwa-mh.de")
offer_catgory_43 = OfferCategory.new
offer_catgory_43.offer = offer_43
offer_catgory_43.category = category_1
offer_catgory_43.save!

offer_44 = Offer.create!(user: user_1, district: district_10, title: "Homework help / learning support", address: "Maxie-Wander-Straße 78,  Berlin", description: "We are looking for volunteers to support the students in our shared accommodation in their learning.", email: "kontakt@fwa-mh.de")
offer_catgory_44 = OfferCategory.new
offer_catgory_44.offer = offer_44
offer_catgory_44.category = category_1
offer_catgory_44.save!

offer_45 = Offer.create!(user: user_1, district: district_10, title: "Cultural assistant", address: "Kummerower Ring 43, 12619 Berlin", description: "In order to make the cultural program in the KOMPASS more diverse, we are looking for volunteers who plan, organize and promote the events in the KOMPASS. This happens in close cooperation with the head of the facility and other volunteers.", email: "kontakt@fwa-mh.de")
offer_catgory_45 = OfferCategory.new
offer_catgory_45.offer = offer_45
offer_catgory_45.category = category_1
offer_catgory_45.save!

offer_46 = Offer.create!(user: user_1, district: district_10, title: "Voluntary library staff ", address: "Hellersdorfer Promenade 24, 12627 Berlin", description: "The non-profit association AGRARBÖRSE Deutschland Ost e. V. has stood for great commitment and sustainable projects for over 30 years, including in the fields of culture and art. Our project The Peter Weiss Library in Hellersdorf was founded in 1990 by a group of mostly younger people. Through donations, loans and funding, a unique, versatile library with around 20,000 volumes has been created in 30 years, which works exclusively on a voluntary basis, but professionally. The German-Swedish writer, filmmaker and painter Peter Weiss (1916-1982) was named after the company in 2002. We need volunteers so that library operations and the special collection of books as a cultural asset can be continued and developed in the years to come, just as they began in the past. The library works in the Hellersdorfer Promenade 24, 12627 Berlin. Your tasks Collaboration in advising readers during loan periods, support in research, procurement and cataloging of new books, collaboration in the planning and organization of readings and others Events, scope of work: 1 to 2 times a week for 4 hours or by arrangement. Your competencies You are interested in novels and short stories, in specialist literature on history, politics, art and culture as well as many other fields of knowledge, you like to read and enjoy interacting with others People, you have basic knowledge of the PC, you are open to new tasks and challenges. Please send a short letter of motivation including a curriculum vitae by email to plank @ agrar-boerse-ev. de or by post to: AGRARBÖRSE Deutschland Ost e. V. Human Resources Department, Eichenstrasse 2, 12435 Berlin", email: "kontakt@fwa-mh.de")
offer_catgory_46 = OfferCategory.new
offer_catgory_46.offer = offer_46
offer_catgory_46.category = category_7
offer_catgory_46.save!

offer_47 = Offer.create!(user: user_1, district: district_6, title: "Inclusion job bridge", address: "Paulsenstr. 55/56, 12163 Berlin", description: "We are a Berlin-wide project that promotes the professional integration / rehabilitation of people with disabilities. For us, disability is not an individual phenomenon, but a lack of sensitivity of social subsystems for the various forms of human life. With our project we are increasing the participation of people with disabilities in the labor market. This is done by means of individual 1: 1 support from voluntary sponsors. After the targeted mediation between the job-seeking people with disabilities and the volunteers, the joint work on the agreed goals begins in the sponsorship. The project participants bring in the topics that they would like support to work on, and the sponsors support the jobseekers in working out solutions. All sponsorships are accompanied and supported by the project coordination, the volunteer sponsors receive further training in workshops and regular supervision.", email: "kontakt@fwa-mh.de")
offer_catgory_47 = OfferCategory.new
offer_catgory_47.offer = offer_47
offer_catgory_47.category = category_3
offer_catgory_47.save!

offer_48 = Offer.create!(user: user_1, district: district_10, title: "Language café", address: "Alte Hellersdorfer Str. 77, 12629 Berlin", description: "Language café for Arabic-speaking women who want to learn German At our language café, you can help our staff by talking to 5-10 women about everyday issues in a cozy atmosphere.", email: "kontakt@fwa-mh.de")
offer_catgory_48 = OfferCategory.new
offer_catgory_48.offer = offer_48
offer_catgory_48.category = category_1
offer_catgory_48.save!

offer_49 = Offer.create!(user: user_1, district: district_10, title: "Support in the organization and supervision of cultural events", address: "Maxie-Wander-Straße 56, 12619 Berlin", description: "The facility needs volunteers to help with cloakroom service as well as housekeeping tasks in the care of cultural events.", email: "kontakt@fwa-mh.de")
offer_catgory_49 = OfferCategory.new
offer_catgory_49.offer = offer_49
offer_catgory_49.category = category_7
offer_catgory_49.save!

offer_50 = Offer.create!(user: user_1, district: district_10, title: "Visit to senior citizens", address: "Märkische Allee 42, 12681 Berlin", description: "The residents of the Kursana domicile in Berlin-Marzahn look forward to volunteers who can spend time with you. After getting to know the resident and after consultation with the responsible employee, reliable agreements are made independently, e.g. to go for a walk together, talk to each other, accompany them to the doctor, etc. A trusting and pleasant relationship should develop for both sides .", email: "kontakt@fwa-mh.de")
offer_catgory_50 = OfferCategory.new
offer_catgory_50.offer = offer_50
offer_catgory_50.category = category_2
offer_catgory_50.save!

offer_51 = Offer.create!(user: user_1, district: district_4, title: "Tour scouts become in the project 'Tour scouts limitless'", address: "Paretzer Str. 7, 10713 Berlin", description: "'Tour scouts limitless' is a project of the NaturFreunde Landesverband Berlin eV that they started in 2020. The project takes up the need to create the prerequisites and framework conditions for the integration of young adults from Bulgarian immigrants in Germany. The project aims to promote respect, tolerance and understanding between young adults who have immigrated from Bulgaria and young adults born in Germany with and without a migration background. The aim is to reduce discrimination and prejudice against Bulgarian immigrants. The aim is mutual learning and dealing with existing stereotypes in both countries. Through collaborative work, the participants are encouraged to question existing stereotypical images and prejudices, and intercultural exchange and getting to know one another are supported. During the project, the young adults participating are trained to be touring scouts who are empowered and empowered against prejudice, racism and discriminatory treatment. Tasks of the volunteer: Prepare and implement cultural and historical educational tours, including: do research, determine stations, map out, take photos and video clips, write short texts, work with social media, lead the prepared tours, etc. The project is funded by the Federal Ministry of the Interior, for Building and Home Affairs. During the project, the young adults participating are trained to be touring scouts who are empowered and empowered against prejudice, racism and discriminatory treatment. Tasks of the volunteer: Prepare and implement cultural and historical educational tours, including: do research, determine stations, map out, take photos and video clips, write short texts, work with social media, lead the prepared tours, etc. The project is funded by the Federal Ministry of the Interior, for Building and Home Affairs. During the project, the young adults participating are trained to be touring scouts who are empowered and empowered against prejudice, racism and discriminatory treatment. Tasks of the volunteer: Prepare and implement cultural and historical educational tours, including: do research, determine stations, map out, take photos and video clips, write short texts, work with social media, lead the prepared tours, etc. The project is funded by the Federal Ministry of the Interior, for Building and Home Affairs.Tour scouts become in the project 'Tour scouts limitless'", email: "kontakt@fwa-mh.de")
offer_catgory_51 = OfferCategory.new
offer_catgory_51.offer = offer_51
offer_catgory_51.category = category_5
offer_catgory_51.save!

offer_52 = Offer.create!(user: user_1, district: district_10, title: "Assistance with homework supervision", address: "Hultschiner Damm 98, 12623 Berlin", description: "In the facility we look after children and young people from 6 to 18 years of age who will not be able to live with their families for the foreseeable future. In everyday life, they receive round-the-clock support and a fixed daily structure. In order to support the children and adolescents in doing their homework, we look forward to volunteers who are on hand to help.", email: "kontakt@fwa-mh.de")
offer_catgory_52 = OfferCategory.new
offer_catgory_52.offer = offer_52
offer_catgory_52.category = category_1
offer_catgory_52.save!

offer_53 = Offer.create!(user: user_1, district: district_10, title: "English Language Teacher", address: "Altlandsberger Pl. 2, 12685 Berlin", description: "The district center MOSAIK in Marzahn is a place for neighborly encounters, self-help promotion and neighborly help. One focus of this facility is family and senior work. We are looking for an English teacher for our English group (little previous knowledge). The group meets every Tuesday at 10 a.m.", email: "kontakt@fwa-mh.de")
offer_catgory_53 = OfferCategory.new
offer_catgory_53.offer = offer_53
offer_catgory_53.category = category_7
offer_catgory_53.save!

offer_54 = Offer.create!(user: user_1, district: district_10, title: "Participation in voluntary initiative for the inclusion of refugees", address: "Kummerower Ring 41, 12619 Berlin", description: "The project work group 'Arriving in Marzahn-Hellersdorf' is looking for volunteers who want to participate and help shape. The aim is to develop, organize and implement project ideas to support the integration of refugees. Our focus is currently on the organization of intercultural encounters, such as intercultural cooking. The development of further focal points is conceivable - we are open to new ideas!", email: "kontakt@fwa-mh.de")
offer_catgory_54 = OfferCategory.new
offer_catgory_54.offer = offer_54
offer_catgory_54.category = category_5
offer_catgory_54.save!

offer_55 = Offer.create!(user: user_1, district: district_10, title: "Participation in the Youth Red Cross", address: "Sella-Hasse-Str. 19, 12687 Berlin", description: "The association protects and helps where human suffering is to be prevented and alleviated. Good work with children and young people is necessary so that the work of the association can be continued continuously. As a volunteer, you can teach the children and young people (6 - 27 years of age) the basics of first aid in a playful way in a meaningful free time activity. If you have interest, a sense of community, team spirit, fun in and with the group, social interest and tolerance, you have come to the right place. All characteristics typical of children and young people are desired and expected.", email: "kontakt@fwa-mh.de")
offer_catgory_55 = OfferCategory.new
offer_catgory_55.offer = offer_55
offer_catgory_55.category = category_7
offer_catgory_55.save!

offer_56 = Offer.create!(user: user_1, district: district_4, title: "Sponsorship of premature babies", address: "Herbartstr. 25, 14057 Berlin", description: "We are looking for volunteer sponsors who visit the family in order to support them through discussions and sibling care, among other things. This is to prevent possible overloading of the parents.", email: "kontakt@fwa-mh.de")
offer_catgory_56 = OfferCategory.new
offer_catgory_56.offer = offer_56
offer_catgory_56.category = category_1
offer_catgory_56.save!

offer_57 = Offer.create!(user: user_1, district: district_10, title: "New ideas welcome", address: "Hugo-Distler-Straße 16, 12619 Berlin", description: "In a facility in Kaulsdorf you can pursue your hobbies and interests together with others; Do you accompany the residents in everyday life and in their free time: during sports, games, courses, excursions, maybe you have a new idea? An individual profile for your work will be created in the facility.", email: "kontakt@fwa-mh.de")
offer_catgory_57 = OfferCategory.new
offer_catgory_57.offer = offer_57
offer_catgory_57.category = category_8
offer_catgory_57.save!

offer_58 = Offer.create!(user: user_1, district: district_11, title: "Visiting service for seniors", address: "Rhinstraße 105, 10315 Berlin", description: "An inpatient care facility for senior citizens in Lichtenberg has many leisure activities ready for its residents. In the garden of the facility there is a lovingly laid out animal enclosure that invites you to linger. We are looking for volunteers for the residents of the facility to help with the leisure activities. For example, playing board games with the seniors, making music, going for a walk, visiting the animals in the garden or reading from books and newspapers.", email: "kontakt@fwa-mh.de")
offer_catgory_58 = OfferCategory.new
offer_catgory_58.offer = offer_58
offer_catgory_58.category = category_2
offer_catgory_58.save!

offer_59 = Offer.create!(user: user_1, district: district_10, title: "Newspaper show and reading hour in the retirement home", address: "Buckower Ring 62, 12683 Berlin", description: "Our modern Buckower Ring retirement home with a large park-like garden is located on the edge of the Wuhletal landscape park. Trust, affection and human closeness determine our employees' daily dealings with residents. The focus of our nursing, caring and advisory activities is always the person. The retirement home would like to offer a newspaper show with reading for 1 to 1 1/2 hours 2 - 3 times a week at regular appointments for the residents in order to bring the senior citizens closer to current topics and news and arouse their interest. If you have an empathy for the needs of the elderly, a loud and clear manner of speaking, and an interest in news, you've come to the right place.", email: "kontakt@fwa-mh.de")
offer_catgory_59 = OfferCategory.new
offer_catgory_59.offer = offer_59
offer_catgory_59.category = category_2
offer_catgory_59.save!

offer_60 = Offer.create!(user: user_1, district: district_10, title: "Offer for children", address: "Rudolf-Leonhard-Str. 13, 12679 Berlin", description: "We are looking for volunteers who offer leisure activities such as handicrafts or football games for the children and young people of the communal accommodation.", email: "kontakt@fwa-mh.de")
offer_catgory_60 = OfferCategory.new
offer_catgory_60.offer = offer_60
offer_catgory_60.category = category_1
offer_catgory_60.save!

offer_61 = Offer.create!(user: user_1, district: district_10, title: "Time donor - assistance in administration", address: "Blumberger Damm 231, 12687 Berlin", description: "For many years people have volunteered with the time donors. They have grown together to form a large network that stands up for others and strengthens the cohesion of the neighborhood in the districts. With us you can not only contribute your commitment, but also your own ideas. We are still looking for active support for our administration of the voluntary office! If you would like to volunteer with us as a time donor, you are interested in a long-term, continuous cooperation, once a week for at least four hours for social engagement We offer an interesting leisure activity, interpersonal contacts, advanced training opportunities, insurance cover, call us, visit us in our office or write us an email.", email: "kontakt@fwa-mh.de")
offer_catgory_61 = OfferCategory.new
offer_catgory_61.offer = offer_61
offer_catgory_61.category = category_7
offer_catgory_61.save!

offer_62 = Offer.create!(user: user_1, district: district_2, title: "Sponsorships for children from families with addiction problems", address: "Segitzdamm 44, 10969 Berlin", description: "Weekly afternoon meetings of 2-3 hours in which you can spend a nice, carefree time with a child from a family with addiction problems. You will accompany the children through their childhood and adolescence as long as possible. Meetings with the family are not planned. The sponsors are not allowed into the parents' apartment and the child is not allowed into the sponsor's apartment. This serves to protect mutual privacy. 7 children from Marzahn-Hellersdorf are currently looking for sponsors. You can find a clear video about working as a Pat: in from 'Forget me not' here: https://www.diakonie-stadtmitte.de/suchthilfe/vergiss-mich-nicht/ueber-uns", email: "kontakt@fwa-mh.de")
offer_catgory_62 = OfferCategory.new
offer_catgory_62.offer = offer_62
offer_catgory_62.category = category_1
offer_catgory_62.save!

offer_63 = Offer.create!(user: user_1, district: district_2, title: "Accompaniment of disabled people", address: "Weichselstr 24a, 10247 Berlin", description: "The association progress eV works with different professional groups and has specialized in the organization and implementation of integrative vacation trips and trips for disabled people over the years. The association also offers care services in the form of care groups and helpers for home care. Volunteers are needed to support people with disabilities as part of their leisure activities in the playground, exhibition, petting zoo, etc., and to eat.", email: "kontakt@fwa-mh.de")
offer_catgory_63 = OfferCategory.new
offer_catgory_63.offer = offer_63
offer_catgory_63.category = category_3
offer_catgory_63.save!

offer_64 = Offer.create!(user: user_1, district: district_2, title: "Helpers wanted for people with disabilities", address: "Weichselstr. 24a, 10247 Berlin", description: "The association progress eV works with different professional groups and has specialized in the organization and implementation of integrative vacation trips and trips for disabled people. Voluntary support is desired for an hourly care of relatives who have a disability. Regular appointments are scheduled once or twice a week for 2-4 hours. Care should not play a role in this activity, it is about employment, accompaniment and care.", email: "kontakt@fwa-mh.de")
offer_catgory_64 = OfferCategory.new
offer_catgory_64.offer = offer_64
offer_catgory_64.category = category_3
offer_catgory_64.save!

offer_65 = Offer.create!(user: user_1, district: district_11, title: "Hospice helpers", address: "Herzbergstr 79, 10365 Berlin", description: "The Diakonie-Hospiz Lichtenberg is looking for people who volunteer in caring for the dying and who would like to accompany people on their last part of the journey. We offer interested parties an 85-hour preparatory course as well as continuous support in the form of case discussions, advanced training and supervision.", email: "kontakt@fwa-mh.de")
offer_catgory_65 = OfferCategory.new
offer_catgory_65.offer = offer_65
offer_catgory_65.category = category_2
offer_catgory_65.save!

offer_66 = Offer.create!(user: user_1, district: district_10, title: "Assistance in finding accommodation for refugees", address: "Jan-Petersen-Str. 14, 12679 Berlin", description: "We are looking for volunteers who would be willing to support refugees face to face in looking for accommodation. It's about finding suitable apartments on the Internet, formulating e-mails to landlords, paying attention to pitfalls and small print, and accompanying you to viewing appointments if necessary. So it is about support in individual steps in the entire process of looking for an apartment.", email: "kontakt@fwa-mh.de")
offer_catgory_66 = OfferCategory.new
offer_catgory_66.offer = offer_66
offer_catgory_66.category = category_5
offer_catgory_66.save!

offer_67 = Offer.create!(user: user_1, district: district_10, title: "Accompaniment of music makers - childcare during music lessons", address: "Maxie-Wander-Str. 78, 12619 Berlin", description: "We, the music school teachers of the music makers at Maxie Wander Str, 78, Marzahn near U5 Cottbusser Platz are looking for adults who can help us with lessons and excursions. Mostly Thursday from 3 p.m., but mostly between 4 p.m. and 6 p.m. The tasks are simple, looking after arguing children, looking for grades, helping with unpacking and packing, standing at the door for other children who ask questions, who otherwise just rush into our room. It would be good if the volunteers are not afraid of speeches and conversations and can also help to 'turn down' the volume if necessary.", email: "kontakt@fwa-mh.de")
offer_catgory_67 = OfferCategory.new
offer_catgory_67.offer = offer_67
offer_catgory_67.category = category_1
offer_catgory_67.save!

offer_68 = Offer.create!(user: user_1, district: district_10, title: "Arabic lessons for beginners without prior knowledge / for Arabic speaking primary school children", address: "Marzahner Promenade 38, 12679 Berlin", description: "We would like to include Arabic lessons in our program for a group of Arabic speaking elementary school children or adult beginners with no prior knowledge. For this we need volunteer colleagues who can support our offer. You should have pedagogical knowledge, very good knowledge of the Arabic language and basic knowledge of German.", email: "kontakt@fwa-mh.de")
offer_catgory_68 = OfferCategory.new
offer_catgory_68.offer = offer_68
offer_catgory_68.category = category_1
offer_catgory_68.save!

offer_69 = Offer.create!(user: user_1, district: district_6, title: "Job bridge for refugees", address: "Paulsenstraße 55, 12163 Berlin", description: "The 'Job Bridge for Refugees' project mediates SPONSORSHIPS between volunteers and refugees looking for work. As sponsors, you support refugees in their integration into the core areas of society and break down mutual linguistic and cultural barriers. They provide advice and support in promoting individual skills, motivational training, application and job search.", email: "kontakt@fwa-mh.de")
offer_catgory_69 = OfferCategory.new
offer_catgory_69.offer = offer_69
offer_catgory_69.category = category_5
offer_catgory_69.save!

offer_70 = Offer.create!(user: user_1, district: district_10, title: "Gardener wanted", address: "Elsenstraße 11, 12623 Berlin", description: "The facility has a large garden with plenty of play area for the children. For the maintenance of the garden area, the facility needs a volunteer who offers support with garden maintenance and cleaning work on the outdoor play area.", email: "kontakt@fwa-mh.de")
offer_catgory_70 = OfferCategory.new
offer_catgory_70.offer = offer_70
offer_catgory_70.category = category_7
offer_catgory_70.save!

offer_71 = Offer.create!(user: user_1, district: district_10, title: "Bicycle Clinic", address: "Sella-Hasse-Str. 19, 12687 Berlin", description: "The DRK in Marzahn offers children and young people between the ages of 6 and 20 a space in which they can spend their free time and are encouraged in their development through voluntary participation in offers. The bicycle clinic is a new offer. Here the bikes can be checked and repaired together with the children and adults. We are looking for volunteers who support the offer and put it into practice.", email: "kontakt@fwa-mh.de")
offer_catgory_71 = OfferCategory.new
offer_catgory_71.offer = offer_71
offer_catgory_71.category = category_7
offer_catgory_71.save!

offer_72 = Offer.create!(user: user_1, district: district_6, title: "Training bridge - mentors for trainees", address: "Paulsenstraße 56, 12163 Berlin", description: "We are looking for volunteers who act as mentors to advise and support the trainees in their training (mentoring against dropping out of training). Your support helps with difficulties in the training company, vocational school, with exam anxiety, motivation problems or wrong career choice. You use your professional experience, supplemented by our advisory and coaching instruments. We support you with further training, team meetings and supervision.", email: "kontakt@fwa-mh.de")
offer_catgory_72 = OfferCategory.new
offer_catgory_72.offer = offer_72
offer_catgory_72.category = category_7
offer_catgory_72.save!

offer_73 = Offer.create!(user: user_1, district: district_10, title: "Sponsorships for refugees", address: "Maxie-Wander-Straße 78, 12619 Berlin", description: "Support of residents of a refugee accommodation in coping with everyday life. These can be, for example, the following tasks: - Accompanying you to appointments, e.g. with offices or doctors - looking for an apartment - looking for a daycare place - looking for work / training / internship", email: "kontakt@fwa-mh.de")
offer_catgory_73 = OfferCategory.new
offer_catgory_73.offer = offer_73
offer_catgory_73.category = category_5
offer_catgory_73.save!

offer_74 = Offer.create!(user: user_1, district: district_10, title: "Partner to play chess", address: "Märkische Allee 67, 12681 Berlin", description: "The Kursana Domizil Berlin-Marzahn offers seniors a safe home. In addition to professional care, this also includes attractive, high-quality offers and individual employment opportunities. A resident of the domicile likes to play chess and is happy to have a partner who shares this hobby. If you also enjoy playing chess, the Kursana Domizil will be happy to put you in contact with the resident.", email: "kontakt@fwa-mh.de")
offer_catgory_74 = OfferCategory.new
offer_catgory_74.offer = offer_74
offer_catgory_74.category = category_2
offer_catgory_74.save!

offer_75 = Offer.create!(user: user_1, district: district_10, title: "Support with visitor service / event supply", address: "Frankenholzer Weg 4, 12683 Berlin", description: "In a theater on the outskirts of Marzahn, volunteers are wanted who can take over the visitor service in the gastronomic area at events. Drinks, cakes and a small snack should be offered. The assignments mainly take place on the weekends at dance events, concerts or conferences.", email: "kontakt@fwa-mh.de")
offer_catgory_75 = OfferCategory.new
offer_catgory_75.offer = offer_75
offer_catgory_75.category = category_7
offer_catgory_75.save!

offer_76 = Offer.create!(user: user_1, district: district_10, title: "Head of the Singekreis", address: "Märkische Allee 47, 12681 Berlin", description: "A social facility in Marzahn offers senior citizens not only professional care, but also appealing, high-quality offers and individual employment opportunities. One offer is the Singekreis, where senior citizens can let their joy in singing run free. We are looking for volunteers who can lead the singing circle and maybe play an instrument.", email: "kontakt@fwa-mh.de")
offer_catgory_76 = OfferCategory.new
offer_catgory_76.offer = offer_76
offer_catgory_76.category = category_7
offer_catgory_76.save!

offer_77 = Offer.create!(user: user_1, district: district_10, title: "Homework help", address: "Franz- Stenzer- Str. 39, 12679 Berlin", description: "In addition to exercising, many children also need help with homework and tutoring in primary school. These tasks require volunteers to provide homework support and tutoring for children with learning disabilities. Age range: 4.; 7th grade to 10th grade with the subjects math and English. The prerequisite is the ability to impart the knowledge to children with partial impairments in reading, writing and arithmetic.", email: "kontakt@fwa-mh.de")
offer_catgory_77 = OfferCategory.new
offer_catgory_77.offer = offer_77
offer_catgory_77.category = category_1
offer_catgory_77.save!

offer_78 = Offer.create!(user: user_1, district: district_12, title: "Mentoring and sponsorships", address: "Legenderstraße 48, 13407 Berlin", description: "The volunteers meet regularly (once a week) with their tandem partners. They support the tandem partner with very individual concerns, such as - practice German - do homework - support access to the help system - do nice things as leisure activities that both of them enjoy doing - collect information: about school and work, looking for accommodation, about a doctor * inside - going to offices and appointments - writing applications and practicing job interviews - talking to each other and telling about experiences", email: "kontakt@fwa-mh.de")
offer_catgory_78 = OfferCategory.new
offer_catgory_78.offer = offer_78
offer_catgory_78.category = category_1
offer_catgory_78.save!

offer_79 = Offer.create!(user: user_1, district: district_10, title: "Support at parties and events", address: "Alte Hellersdorfer Str. 78, 12629 Berlin", description: "For the implementation of celebrations and events (Easter, Christmas, open house, district festival) we need active support with the construction and dismantling as well as for the stand supervision or the implementation of individual activities.", email: "kontakt@fwa-mh.de")
offer_catgory_79 = OfferCategory.new
offer_catgory_79.offer = offer_79
offer_catgory_79.category = category_7
offer_catgory_79.save!

offer_80 = Offer.create!(user: user_1, district: district_11, title: "Family support in the children's and family hospice service", address: "Albertinenstraße 20, 13086 Berlin", description: "Accompaniment of individual families in which a child or parent is seriously ill and / or dying, accompaniment of children / adolescents in child and youth mourning groups, support of the children's hospice service. Usually once a year a preparatory course for volunteer life and family companions in the children's hospice service starts. The preparatory course is free and is open to everyone who would like to give their time to families whose everyday life includes topics like dying, death and mourning. The course comprises around 100 hours of instruction and takes place in an integrative manner. This means that volunteer supervisors in adult and children's hospice work learn together in certain basic seminars and specialize in advanced seminars in the area they have chosen. Further information at: https:", email: "kontakt@fwa-mh.de")
offer_catgory_80 = OfferCategory.new
offer_catgory_80.offer = offer_80
offer_catgory_80.category = category_1
offer_catgory_80.save!

offer_81 = Offer.create!(user: user_1, district: district_10, title: "Garden maintenance in the generation garden of the district center", address: "Pestalozzistraße 1 A, 12623 Berlin", description: "The district center sees itself as a social and cultural meeting place for young and old. Volunteers are still needed who are interested in and enjoy gardening.", email: "kontakt@fwa-mh.de")
offer_catgory_81 = OfferCategory.new
offer_catgory_81.offer = offer_81
offer_catgory_81.category = category_6
offer_catgory_81.save!

offer_82 = Offer.create!(user: user_1, district: district_7, title: "Support for refugees in the world of work", address: "Großbeerenstr. 2 12107 Berlin", description: "Supporting the participants in achieving the goals they have developed during the seminars. Motivate and strengthen participants, stabilize them. Support in the search for internships, apprenticeships and jobs. Support in the preparation of application documents. Support in coming into contact with German adolescents / young adults, e.g. in a sports club or similar. Possibly accompany you on visits to the authorities; possibly lecturer for German, math, ...; if necessary, lecturer in simulation games; and the like If interested, organizational support in the implementation of project events. Use according to your own ideas and skills as well as the needs of the participants", email: "kontakt@fwa-mh.de")
offer_catgory_82 = OfferCategory.new
offer_catgory_82.offer = offer_82
offer_catgory_82.category = category_5
offer_catgory_82.save!

offer_83 = Offer.create!(user: user_1, district: district_10, title: "Support with games and coffee afternoons on Sunday", address: "Allee der Kosmonauten 70, 12681 Berlin", description: "Our day care center is looking for you to participate. The visitors to our facility after Helene-Weigel-Platz look forward to people who enjoy playing, reading, talking and of course coffee and cake with you.", email: "kontakt@fwa-mh.de")
offer_catgory_83 = OfferCategory.new
offer_catgory_83.offer = offer_83
offer_catgory_83.category = category_2
offer_catgory_83.save!

offer_84 = Offer.create!(user: user_1, district: district_10, title: "Maintenance of the garden", address: "Hirschfelder Weg 14, 12679 Berlin", description: "We are looking for a volunteer who can look after the garden to look after the garden in the Kursana domicile at Landsberger Tor. For example - mow the lawn, - water plants, - remove weeds", email: "kontakt@fwa-mh.de")
offer_catgory_84 = OfferCategory.new
offer_catgory_84.offer = offer_84
offer_catgory_84.category = category_6
offer_catgory_84.save!

offer_85 = Offer.create!(user: user_1, district: district_10, title: "Care and support for people in need of care", address: "Zühlsdorfer Straße 20, 12679 Berlin", description: "The employees of Seniorenwohnwelt Zühlsdorfer Straße help to ensure a full, sensibly designed retirement age and thus ensure a high level of well-being and quality of life for their residents and their relatives. Taking into account individual needs, the employees of the nursing home support the everyday life of their residents in cooperation with professional care and support. As a volunteer, you can make the residents happy with a variety of employment opportunities, for example by going for a walk with them, shopping, having conversations, reading to them, doing gymnastics together, doing handicrafts, singing, baking, etc.", email: "kontakt@fwa-mh.de")
offer_catgory_85 = OfferCategory.new
offer_catgory_85.offer = offer_85
offer_catgory_85.category = category_2
offer_catgory_85.save!

offer_86 = Offer.create!(user: user_1, district: district_10, title: "Instructor for 'gentle back exercises'", address: "Stollberger Straße 55, 12627 Berlin", description: "The Frauenzentum Matilde is a socio-cultural institution with the main focus: encounter - counseling - education. The employees look forward to your commitment as instructors for the management of the already existing weekly course 'Gentle back exercises'.", email: "kontakt@fwa-mh.de")
offer_catgory_86 = OfferCategory.new
offer_catgory_86.offer = offer_86
offer_catgory_86.category = category_2
offer_catgory_86.save!

offer_87 = Offer.create!(user: user_1, district: district_1, title: "Voluntary work in the outpatient children's hospice service - family companion", address: "Turmstr 32, 10551 Berlin", description: "The outpatient children's hospice service is looking for volunteer women and men all over Berlin to accompany families with a life-threatening or terminally ill child or adolescent. Voluntary family companions are mentally and physically resilient men and women who regularly give a family a few hours of their time. Depending on the family situation and needs, they support parents, accompany the sick child and especially siblings, at home or in the hospital. They are conversation partners, organize leisure activities or help in everyday life. They are reliable companions and supporters who are often “just” there and stay when things get difficult. Family companions are thoroughly trained in a preparatory course for their use in families. Participation in the course is a prerequisite and free of charge. Course contents are: self-reflection; Perception of oneself and others; Communication; Practical exercises; helping relationships; Sibling work; the family system; Dealing with dying, death, parting and mourning for you are continuously and professionally supported in the course and then in practice in your voluntary office by a coordinator. A new preparatory course will start in early 2022. The children's hospice movement is a citizens' movement. People from the middle of society donate their valuable time. Without this voluntary work there would be no offer to support families. Your commitment is needed! helping relationships; Sibling work; the family system; Dealing with dying, death, parting and mourning for you are continuously and professionally supported in the course and then in practice in your voluntary office by a coordinator. A new preparatory course will start in early 2022. The children's hospice movement is a citizens' movement. People from the middle of society donate their valuable time. Without this voluntary work there would be no offer to support families. Your commitment is needed! helping relationships; Sibling work; the family system; Dealing with dying, death, parting and mourning for you are continuously and professionally supported in the course and then in practice in your voluntary office by a coordinator. A new preparatory course will start in early 2022. The children's hospice movement is a citizens' movement. People from the middle of society donate their valuable time. Without this voluntary work there would be no offer to support families. Your commitment is needed! The children's hospice movement is a citizens' movement. People from the middle of society donate their valuable time. Without this voluntary work there would be no offer to support families. Your commitment is needed! The children's hospice movement is a citizens' movement. People from the middle of society donate their valuable time. Without this voluntary work there would be no offer to support families. Your commitment is needed!", email: "kontakt@fwa-mh.de")
offer_catgory_87 = OfferCategory.new
offer_catgory_87.offer = offer_87
offer_catgory_87.category = category_1
offer_catgory_87.save!

offer_88 = Offer.create!(user: user_1, district: district_10, title: "voluntary legal supervisor", address: "Helene-Weigel-Platz 13, 12681 Berlin", description: "People who cannot regulate their legal affairs themselves due to illness or disability are entitled to legal support. According to the decision of the district court, they support and represent those affected, among others towards institutions and authorities, submit applications and organize the help they need. As a rule, they report on their work to the local court on an annual basis. It should offer those affected reliable and continuous support.", email: "kontakt@fwa-mh.de")
offer_catgory_88 = OfferCategory.new
offer_catgory_88.offer = offer_88
offer_catgory_88.category = category_7
offer_catgory_88.save!

offer_89 = Offer.create!(user: user_1, district: district_10, title: "Dog visit on the floors of the Kursana domicile", address: "Märkische Allee 60, 12681 Berlin", description: "Who can imagine coming to us on the floors with their very well-groomed, very well-behaved dog, once a week, to make our animal lovers happy. Our previous 'therapy dog' has unfortunately retired for reasons of age.", email: "kontakt@fwa-mh.de")
offer_catgory_89 = OfferCategory.new
offer_catgory_89.offer = offer_89
offer_catgory_89.category = category_7
offer_catgory_89.save!

offer_90 = Offer.create!(user: user_1, district: district_11, title: "Hobby dancer for girls", address: "GU Paul-Schwenk-Straße 3, 12685 Berlin", description: "Our girls (12-17) want an opportunity to dance. For this we are looking for a dance-loving woman who (preferably) would like to teach the teenage girls a few hip-hop dance steps. Rooms are made available both internally and externally.", email: "kontakt@fwa-mh.de")
offer_catgory_90 = OfferCategory.new
offer_catgory_90.offer = offer_90
offer_catgory_90.category = category_1
offer_catgory_90.save!

offer_91 = Offer.create!(user: user_1, district: district_10, title: "Conducting swimming courses", address: "Sella-Hasse-Str. 21, 12687 Berlin", description: "The DRK is one of the largest welfare associations in Germany and, with its facilities, offers and services, is active nationwide in all fields of welfare and social work with both volunteer and full-time workers. As a volunteer, you can carry out swimming courses for children, for the population and also train lifeguards. The locations are different indoor swimming pools in the district.", email: "kontakt@fwa-mh.de")
offer_catgory_91 = OfferCategory.new
offer_catgory_91.offer = offer_91
offer_catgory_91.category = category_1
offer_catgory_91.save!

offer_92 = Offer.create!(user: user_1, district: district_10, title: "Support for physical activity in the service apartment", address: "Tollensestr. 22, 12619 Berlin", description: "The facility needs voluntary support in providing instructions for physical activity and musical accompaniment for the residents. Support at events is also desirable. The facility looks forward to your commitment!", email: "kontakt@fwa-mh.de")
offer_catgory_92 = OfferCategory.new
offer_catgory_92.offer = offer_92
offer_catgory_92.category = category_2
offer_catgory_92.save!

offer_93 = Offer.create!(user: user_1, district: district_10, title: "Visiting service for people in need of care at home", address: "Blumberger Damm 2k, 12683 Berlin", description: "This visiting service takes place to relieve the relatives and to look after those in need of care. We are looking for volunteers who can talk to the sick people, encourage them to do their own activities and bring them into the community, joint activities at home, hourly replacement of caring relatives, and joint activities ...", email: "kontakt@fwa-mh.de")
offer_catgory_93 = OfferCategory.new
offer_catgory_93.offer = offer_93
offer_catgory_93.category = category_2
offer_catgory_93.save!

offer_94 = Offer.create!(user: user_1, district: district_10, title: "Heart for Helene", address: "Helene-Weigel-Platz 6, 12681 Berlin", description: "With the free cargo bikes of the fleet, an initiative of the ADFC Berlin, we are bringing another piece of traffic turnaround to the road. Cargo bikes are environmentally friendly vehicles and rolling ambassadors for human-friendly mobility. One of the cargo bikes is at the Marzahn-Hellersdorf volunteer agency: the Helene. As a sponsor, do you want to take special care of the fleet Helene? Do you live or work near your sponsored child, so that you can visit your protégé regularly and check his or her welfare? You also take the air pump to hand and check the brakes, lights and gearshifts. If there is a little ailment, you let the fleet project office know - or you can use the tools yourself. You are the bridge between the location and the fleet project office, Bring documents back and forth from time to time, provide support in the event of problems and help organize regular maintenance. Get in touch at paten@flotte-berlin.de, then we will discuss everything else and welcome you to the fleet community!", email: "kontakt@fwa-mh.de")
offer_catgory_94 = OfferCategory.new
offer_catgory_94.offer = offer_94
offer_catgory_94.category = category_7
offer_catgory_94.save!

offer_95 = Offer.create!(user: user_1, district: district_10, title: "Volunteer event assistant", address: "Alt-Marzahn 63, 12685 Berlin", description: "So that the KulturGut and the SchaMottchen art and ceramics barn can continue to perform their functions as the main pillars of the cultural offerings in the Marzahn-Hellersdorf district, support from voluntary helpers is required, who ensure the range of events together with the experienced team on site. This includes: - Support in the preparation and follow-up of events and courses - Practical work on ongoing events (e.g. entry and organization, artist support, catering) You have a personal interest in art and culture or you already have some experience in the organization and implementation of events ? You enjoy dealing with people of different ages, Origin or interest? Are you open to new tasks and challenges and do you love to get involved socially? Then we look forward to getting to know you! Please send us a short letter of motivation including a curriculum vitae by email to petzold@agrar-boerse-ev.de or by post to: AGRARBÖRSE Deutschland Ost eV Human Resources Department Eichenstrasse 2 12435 Berlin We look forward to your application!", email: "kontakt@fwa-mh.de")
offer_catgory_95 = OfferCategory.new
offer_catgory_95.offer = offer_95
offer_catgory_95.category = category_7
offer_catgory_95.save!

offer_96 = Offer.create!(user: user_1, district: district_12, title: "Family companion in families with children with life-shortening illnesses", address: "Wilhelm-Wolff-Str. 38, 13156 Berlin", description: "Through their commitment, family companions regularly relieve the families in their everyday life. They look after children who have fallen ill or their healthy siblings, accompany them on visits to the authorities or to visits to the doctor, and are the conversation partners for all family members. The volunteers are prepared for their assignments in a preparatory course.", email: "kontakt@fwa-mh.de")
offer_catgory_96 = OfferCategory.new
offer_catgory_96.offer = offer_96
offer_catgory_96.category = category_1
offer_catgory_96.save!

offer_97 = Offer.create!(user: user_1, district: district_10, title: "Reading godfather", address: "Sella-Hasse-Str. 19/21, 12687 Berlin", description: "The DRK in Marzahn offers various activities for children and their families. One of the offerings is the afternoon reading for children. Here stories or fairy tales are read to the children and the role of a reading mentor (looking after primary school children while reading) is taken on. We are looking for volunteers who like to read aloud and can bring the children closer to reading with a lot of empathy.", email: "kontakt@fwa-mh.de")
offer_catgory_97 = OfferCategory.new
offer_catgory_97.offer = offer_97
offer_catgory_97.category = category_1
offer_catgory_97.save!

offer_98 = Offer.create!(user: user_1, district: district_10, title: "Gardening and maintenance of the outdoor area", address: "Bruno-Baum-Straße 56, 12685 Berlin", description: "The FreiwilligenAgentur Marzahn-Hellersdorf is the central contact point in the district for citizens who want to get involved on a voluntary basis.", email: "kontakt@fwa-mh.de")
offer_catgory_98 = OfferCategory.new
offer_catgory_98.offer = offer_98
offer_catgory_98.category = category_6
offer_catgory_98.save!

offer_99 = Offer.create!(user: user_1, district: district_12, title: "Support and care for people with dementia in group and individual care", address: "Reinickendorfer Str. 61, 13347 Berlin", description: "Care and accompaniment of seniors with dementia in care groups (team) and in the domesticity of those affected (individual care), walking, playing with the sick, briefing and familiarization is carried out by experienced carers", email: "kontakt@fwa-mh.de")
offer_catgory_99 = OfferCategory.new
offer_catgory_99.offer = offer_99
offer_catgory_99.category = category_2
offer_catgory_99.save!

offer_100 = Offer.create!(user: user_1, district: district_10, title: "Craftsman for our dementia flat share", address: "Flämingstraße 70, 12689 Berlin", description: "Our flat share for people with dementia needs help with manual activities at regular intervals. This could include attaching pictures, lamps, curtains, etc., or small painting jobs.", email: "kontakt@fwa-mh.de")
offer_catgory_100 = OfferCategory.new
offer_catgory_100.offer = offer_100
offer_catgory_100.category = category_2
offer_catgory_100.save!

offer_101 = Offer.create!(user: user_1, district: district_3, title: "Visiting service for disabled people of all ages", address: "Gäblerstraße 4 , 13086 Berlin", description: "Do you enjoy regular contact with people? Then you have come to the right place in a facility in Weißensee! We are looking for interested parties who regularly visit people with intellectual disabilities for talks, walks, visits to cafés, small excursions ... ", email: "heidi.graf@frei-zeit-haus.de")
offer_catgory_101 = OfferCategory.new
offer_catgory_101.offer = offer_101
offer_catgory_101.category = category_3
offer_catgory_101.save!

offer_102 = Offer.create!(user: user_1, district: district_3, title: "Care / activities for kids aged 9-12 in the afternoon", address: "Schönhauser Allee 141 , 10437 Berlin-Prenzlauer Berg", description: "We look forward to a nice, reliable and sociable person with a weakness for dealing with kids up to elementary school, e.g. B. with Lego Wedo games, handicrafts, etc. All languages ​​and other creative hobbies such as painting or handicrafts are welcome. And that person should have reasonably good nerves, because our opening hours are often very busy and loud :-) Otherwise, we are a nice team, where collegiality is very important, with room for initiative, the joy of experimentation and the need to learn .", email: "charisma-info@dwbo.de")
offer_catgory_102 = OfferCategory.new
offer_catgory_102.offer = offer_102
offer_catgory_102.category = category_1
offer_catgory_102.save!

offer_103 = Offer.create!(user: user_1, district: district_1, title: "Cosmetics, spa and wellness for refugee women", address: "Friedrichstraße 62, 10117 Berlin", description: "We are looking for volunteers for the women in our reception center who would like to organize one - or more - spa and wellness day (s) with us. Our residents are new to Germany, often do not speak German and cannot afford such fun. Are you a hairdresser or beautician and want to help others and improve their day and mood? Then get in touch with us!", email: " berlin@Gute-Tat.de")
offer_catgory_103 = OfferCategory.new
offer_catgory_103.offer = offer_103
offer_catgory_103.category = category_5
offer_catgory_103.save!

offer_104 = Offer.create!(user: user_1, district: district_12, title: "1 to 1 children's leisure sponsorships", address: "Grußdorfstrasse 16 , 13507 Berlin", description: "We invite anyone who wants to support the development of a child to become a godparent. What is needed are reliable people who want to take on some responsibility. You are a friendly companion for the child. Someone who listens, encourages and helps to find your own way. A task in which you will grow personally. Because children enrich life. Would you like to get involved with a child or young person in your area on a regular basis? We arrange and supervise sponsorships with children with or without refugee experience across Berlin. The first step is an initial meeting with us, during which we can get to know each other better and tell you more about our program. We also need a current, extended official certificate of good conduct, which we can apply for for you. The last step before finding a biffy sponsorship is a visit to our introductory workshop. Most of the children we teach are of primary school age.", email: "beratung@ehrenamt-reinickendorf.de")
offer_catgory_104 = OfferCategory.new
offer_catgory_104.offer = offer_104
offer_catgory_104.category = category_1
offer_catgory_104.save!

offer_105 = Offer.create!(user: user_1, district: district_12, title: "New perspectives through volunteering with the free ESF project 'Ehrenamt PLUS'", address: "Im Fischgrund , 13465 Berlin", description: "Are you looking for work or are you retired? Are you looking for variety, orientation and new perspectives? Then you have come to the right place in the ESF-funded project 'Ehrenamt PLUS'! We offer: voluntary work, further training and advice. There are a variety of volunteer opportunities in your region - fully adaptable to your wishes! In addition, we offer the qualification for everyday support §45a SGB XI and are happy to advise you on all life issues and develop new perspectives with you!", email: "bonny.lotzow@stephanus.org")
offer_catgory_105 = OfferCategory.new
offer_catgory_105.offer = offer_105
offer_catgory_105.category = category_1
offer_catgory_105.save!

offer_106 = Offer.create!(user: user_1, district: district_1, title: "Volunteers for the world's largest inclusive sporting event", address: "Osloer Strasse 12 , 13359 Berlin", description: "The Special Olympics National Games Berlin 2022 will take place in Berlin from June 19 to 24, 2022. Up to 5,000 athletes will compete in more than 20 sports in the hope of qualifying for the Special Olympics World Games Berlin 2023 next year. The Special Olympics World Games 2023 (June 17th to 24th) are the world's largest inclusive sporting event. Thousands of athletes with mental and multiple disabilities compete in 26 sports and Unified Sport® competitions. There are many different areas in which volunteers can provide support: Admission control, accommodation, accreditation, business operations, catering, hospitality, communication, delegations, families, legacy, logistics, marketing, media, medical care", email: "info@freiwilligenagentur-mitte.de")
offer_catgory_106 = OfferCategory.new
offer_catgory_106.offer = offer_106
offer_catgory_106.category = category_7
offer_catgory_106.save!

offer_107 = Offer.create!(user: user_1, district: district_5, title: "Practical help after the birth", address: "Weverstr. 72 , 13595 Berlin", description: "We are looking for committed people who support families in the first year of a baby's life. Everyday practical help relieves mothers / fathers and enables children to get off to a good start. The focus of the help is taking care of the baby or siblings, so that the mother can relax or take care of things that have broken down, for example. The family's situation and the resulting concrete support is always discussed individually.", email: "berlin.spandau@wellcome-online.de")
offer_catgory_107 = OfferCategory.new
offer_catgory_107.offer = offer_107
offer_catgory_107.category = category_1
offer_catgory_107.save!
