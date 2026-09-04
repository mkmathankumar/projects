import pandas as pd
import random
from datetime import datetime, timedelta

positive_templates = [
    "This video helped me a lot",
    "Amazing explanation",
    "Excellent tutorial",
    "Very informative content",
    "I learned something new today",
    "Fantastic work",
    "Great presentation",
    "Highly recommended video",
    "The explanation was clear",
    "One of the best tutorials",
    "Very useful for beginners",
    "Thanks for sharing this knowledge",
    "Superb content",
    "This solved my problem",
    "Outstanding explanation"
]

negative_templates = [
    "Very confusing explanation",
    "Waste of time",
    "Poor quality content",
    "Did not help me",
    "Worst tutorial I have seen",
    "Bad presentation",
    "Not useful at all",
    "The explanation was unclear",
    "I learned nothing",
    "Terrible content",
    "Disappointing video",
    "Too many mistakes",
    "Very difficult to understand",
    "Low quality tutorial",
    "Not worth watching"
]

extra_words = [
    "today", "seriously", "honestly", "for students",
    "for beginners", "for professionals",
    "on this topic", "about python",
    "about machine learning", "about data science",
    "in 2025", "recently"
]

rows = []

start_date = datetime(2025, 1, 1)

for i in range(20000):

    if random.random() > 0.5:
        comment = (
            random.choice(positive_templates)
            + " "
            + random.choice(extra_words)
        )
        sentiment = "Positive"
    else:
        comment = (
            random.choice(negative_templates)
            + " "
            + random.choice(extra_words)
        )
        sentiment = "Negative"

    date = start_date + timedelta(hours=random.randint(0, 3000))

    rows.append([
        date.strftime("%Y-%m-%d"),
        comment,
        sentiment
    ])

df = pd.DataFrame(
    rows,
    columns=["date", "comment", "sentiment"]
)

df.to_csv(
    "data/comments.csv",
    index=False
)

print("Generated", len(df), "rows")