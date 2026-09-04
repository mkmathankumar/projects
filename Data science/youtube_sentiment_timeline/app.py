import streamlit as st
import pandas as pd
import joblib
import plotly.express as px

model = joblib.load("model.pkl")
vectorizer = joblib.load("vectorizer.pkl")

st.title("YouTube Comment Sentiment Analyzer")

comment = st.text_area("Enter Comment")

if st.button("Predict"):
    vec = vectorizer.transform([comment])
    result = model.predict(vec)[0]
    st.success(f"Prediction: {result}")

df = pd.read_csv("data/comments.csv")

df["date"] = pd.to_datetime(df["date"])

timeline = df.groupby("date").size().reset_index(name="comments")

fig = px.line(
    timeline,
    x="date",
    y="comments",
    markers=True
)

st.plotly_chart(fig)