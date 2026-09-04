import pandas as pd
import joblib

from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score

df = pd.read_csv("data/fake_job_postings.csv")

X = df["text"]
y = df["fraudulent"]

vectorizer = TfidfVectorizer(stop_words="english")
X_vect = vectorizer.fit_transform(X)

X_train, X_test, y_train, y_test = train_test_split(
    X_vect,
    y,
    test_size=0.2,
    random_state=42
)

model = LogisticRegression(
    max_iter=1000,
    class_weight="balanced"
)

model.fit(X_train, y_train)

pred = model.predict(X_test)

print("Accuracy:", accuracy_score(y_test, pred))

joblib.dump(model, "fake_job_model.pkl")
joblib.dump(vectorizer, "vectorizer.pkl")

print("Model saved successfully")