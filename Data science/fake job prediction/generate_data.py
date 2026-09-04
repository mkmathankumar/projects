import pandas as pd
import random
import os

real_jobs = [
    "Software Engineer with Python experience",
    "Data Analyst with SQL knowledge",
    "Machine Learning Engineer for AI team",
    "Cloud Engineer AWS",
    "Backend Developer Flask and PostgreSQL",
]

fake_jobs = [
    "Earn money instantly from home",
    "No experience earn 5000 per day",
    "Send bank details for job confirmation",
    "Pay fee and get guaranteed job",
    "Quick rich scheme work remotely",
]

# Create data folder if not exists
os.makedirs("data", exist_ok=True)

rows = []

for _ in range(500):
    rows.append([random.choice(real_jobs), 0])

for _ in range(500):
    rows.append([random.choice(fake_jobs), 1])

random.shuffle(rows)

df = pd.DataFrame(rows, columns=["text", "fraudulent"])

# Save inside data folder
df.to_csv("data/fake_job_postings.csv", index=False)

print("Dataset saved successfully!")
print("Shape:", df.shape)