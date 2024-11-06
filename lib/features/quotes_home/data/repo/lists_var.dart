import '../models/quote_model.dart';

List<QuoteModel> quotes = [];
QuoteModel dailyQuote = QuoteModel(
    "You play the hand you're dealt. I think the game's worthwhile.  ",
    "Christopher Reeve");
List<Map> listMap = [
  {
    "q": "Surround yourself only with people who are going to take you higher.",
    "a": "Oprah Winfrey",
  },
  {
    "q": "You play the hand you're dealt. I think the game's worthwhile.  ",
    "a": "Christopher Reeve",
  },
  {
    "q": "We cannot change anything unless we accept it.",
    "a": "Carl Jung",
  },
  {
    "q": "The scariest monsters are the ones that lurk within our souls.",
    "a": "Edgar Allan Poe",
  },
  {
    "q":
        "I think it's very important to have a feedback loop, where you're constantly thinking about what you've done and how you could be doing it better.",
    "a": "Elon Musk",
  },
  {
    "q": "It is useless to meet revenge with revenge; it will heal nothing.",
    "a": "J.R.R. Tolkien",
  },
  {
    "q":
        "Beginning today, treat everyone you meet as if they were going to be dead by midnight. Your life will never be the same again.",
    "a": "Og Mandino",
  },
  {
    "q": "Where there is anger, there is always pain underneath.",
    "a": "Eckhart Tolle",
  },
  {
    "q":
        "Even if you're sure you can win, be careful that you can live with what you lose.",
    "a": "Gary Keller",
  },
  {
    "q":
        "Successful people tend to become more successful because they are always thinking about their successes.",
    "a": "Brian Tracy",
  },
  {
    "q":
        "We cannot always do great things in life, but we can do small things with great love.",
    "a": "Dan Millman",
  },
  {
    "q": "If you want to keep your memories, you first have to live them.",
    "a": "Bob Dylan",
  },
  {
    "q": "Turn the pain into power.",
    "a": "Unknown",
  },
  {
    "q": "Aim for the moon. If you miss, you may hit a star.",
    "a": "W. Clement Stone",
  },
  {
    "q":
        "To succeed takes more than the desire to win. It also takes the acceptance that we could fail.",
    "a": "Simon Sinek",
  },
  {
    "q": "To arrive at the simplest truth requires years of contemplation.",
    "a": "Isaac Newton",
  },
  {
    "q":
        "Only when you can be extremely pliable and soft can you be extremely hard and strong.",
    "a": "Zen Proverb",
  },
  {
    "q": "If it is not right, do not do it, if it is not true, do not say it.",
    "a": "Marcus Aurelius",
  },
  {
    "q":
        "You are always your own best guru, your own best teacher, the answers are always inside you.",
    "a": "Sathya Sai Baba",
  },
  {
    "q": "Every poem should remind the reader that they are going to die.",
    "a": "Edgar Allan Poe",
  },
  {
    "q": "A self that goes on changing is a self that goes on living.",
    "a": "Virginia Woolf",
  },
  {
    "q": "Bloom where you are planted!",
    "a": "Mary Engelbreit",
  },
  {
    "q":
        "If you do not change direction, you may end up where you are heading.",
    "a": "Lao Tzu",
  },
  {
    "q":
        "Your gift is something that you can do innately better than anything else.",
    "a": "Steve Harvey",
  },
  {
    "q":
        "Don't let the noise of others' opinions drown out your own inner voice.",
    "a": "Steve Jobs",
  },
  {
    "q": "Whatever happens always happens on time.",
    "a": "Zen Proverb",
  },
  {
    "q": "We've got to live, no matter how many skies have fallen.",
    "a": "D. H. Lawrence",
  },
  {
    "q":
        "Do not try to be on the side of the majority, but live according to your inner laws.",
    "a": "Marcus Aurelius",
  },
  {
    "q":
        "Love and compassion are necessities, not luxuries. Without them, humanity cannot survive.",
    "a": "Dalai Lama",
  },
  {
    "q":
        "I will love the light for it shows me the way, yet I will endure the darkness because it shows me the stars.",
    "a": "Og Mandino",
  },
  {
    "q": "Life is but one dream flowing into another.",
    "a": "Ming-Dao Deng",
  },
  {
    "q": "Why do you stay in prison when the door is so wide open?",
    "a": "Rumi",
  },
  {
    "q":
        "Be the reason someone smiles. Be the reason someone feels loved and believes in the goodness in people.",
    "a": "Roy T. Bennett",
  },
  {
    "q":
        "In a world of change, the learners shall inherit the earth, while the learned shall find themselves perfectly suited for a world that no longer exists.",
    "a": "Eric Hoffer",
  },
  {
    "q": "The world is a puzzle; no need to make sense out of it.",
    "a": "Socrates",
  },
  {
    "q":
        "First comes the shy wish. Then you must have the heart to have the dream. Then, you work, and work.  ",
    "a": "Estee Lauder",
  },
  {
    "q": "Whoever is happy will make others happy too.",
    "a": "Anne Frank",
  },
  {
    "q":
        "We cannot expect to be happy always... by experiencing evil as well as good we become wise.",
    "a": "Hans Christian Andersen",
  },
  {
    "q":
        "People tend to complicate their own lives, as if living weren't already complicated enough.",
    "a": "Carlos Ruiz Zafon",
  },
  {
    "q":
        "Happiness is a choice, not a result. Nothing will make you happy until you choose to be happy.",
    "a": "Ralph Marston",
  },
  {
    "q":
        "Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better. ",
    "a": "Samuel Beckett",
  },
  {
    "q": "We become what we believe.",
    "a": "Lolly Daskal",
  },
  {
    "q": "Fear is a natural reaction to moving closer to the truth.",
    "a": "Pema Chodron",
  },
  {
    "q":
        "A man has to learn that he cannot command things but that he can command himself; that he cannot coerce the wills of others but that he can mold and master his own will.",
    "a": "James Allen",
  },
  {
    "q":
        "Successful people are not without problems. They're simply people who've learned to solve their problems.",
    "a": "Earl Nightingale",
  },
  {
    "q":
        "Your friends will know you better in the first minute you meet than your acquaintances will know you in a thousand years.",
    "a": "Richard Bach",
  },
  {
    "q": "The healthiest response to life is joy.",
    "a": "Deepak Chopra",
  },
  {
    "q": "If a thing is worth doing, it is worth doing badly.",
    "a": "Gilbert Chesterton",
  },
  {
    "q": "The meaning of life is that it stops.",
    "a": "Franz Kafka",
  },
  {
    "q": "Only those who dare to fail greatly can ever achieve greatly.",
    "a": "Robert F. Kennedy",
  }
];
