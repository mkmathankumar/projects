import google.generativeai as genai
import os
from dotenv import load_dotenv

load_dotenv()

genai.configure(
    api_key=os.getenv("GOOGLE_API_KEY")
)

model = genai.GenerativeModel("gemini-2.5-flash")


def evaluate_answer(question, answer):

    prompt = f"""
    Question:
    {question}

    Candidate Answer:
    {answer}

    Evaluate the answer.

    Give:

    1. Score out of 10
    2. Strengths
    3. Weaknesses
    4. Suggestions
    """

    response = model.generate_content(prompt)

    return response.text