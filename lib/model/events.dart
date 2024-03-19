class Event {
  final String imagePath,
      title,
      description,
      location,
      duration,
      punchLine1,
      punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {required this.imagePath,
      required this.title,
      required this.description,
      required this.location,
      required this.duration,
      required this.punchLine1,
      required this.punchLine2,
      required this.categoryIds,
      required this.galleryImages});
}

final fiveKmRunEvent = Event(
    imagePath: "assets/events/5km_downtown_run.jpg",
    title: "5 Kilometer Downtown Run",
    description: "",
    location: "Pleasant Park",
    duration: "3h",
    punchLine1: "Marathon!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [],
    categoryIds: [0, 1]);

final cookingEvent = Event(
    imagePath: "assets/events/granite_cooking.jpg",
    title: "Granite Cooking Class",
    description:
        "Guest list fill up fast so be sure to apply before hand to secure a spot.",
    location: "Food Court Avenue",
    duration: "4h",
    punchLine1: "Granite Cooking",
    punchLine2: "The latest fad in foodology, get the inside scoop.",
    categoryIds: [
      0,
      2
    ],
    galleryImages: [
      "assets/events/cooking_pics_1.jpg",
      "assets/events/cooking_pics_2.jpg",
    ]);

final musicConcert = Event(
    imagePath: "assets/events/music_concert.jpg",
    title: "Arijit Music Concert",
    description: "Listen to Arijit's latest compositions.",
    location: "D.Y. Patil Stadium, Mumbai",
    duration: "5h",
    punchLine1: "Music Lovers!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [
      "assets/events/cooking_pics_1.jpg",
      "assets/events/cooking_pics_2.jpg",
    ],
    categoryIds: [
      0,
      1
    ]);

final golfCompetition = Event(
    imagePath: "assets/events/golf_competition.jpg",
    title: "Season 2 Golf Estate",
    description: "",
    location: "NSIC Ground, Okhla",
    duration: "1d",
    punchLine1: "Golf!",
    punchLine2: "The latest fad in foodology, get the inside scoup.",
    galleryImages: [
      "assets/event_images/cooking_pics_1.jpg",
      "assets/event_images/cooking_pics_2.jpg",
    ],
    categoryIds: [
      0,
      3
    ]);

final events = [
  fiveKmRunEvent,
  cookingEvent,
  musicConcert,
  golfCompetition,
];
