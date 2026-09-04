import google.generativeai as genai
import os
from dotenv import load_dotenv

load_dotenv()

genai.configure(
    api_key=os.getenv("GOOGLE_API_KEY")
)

model = genai.GenerativeModel("gemini-2.5-flash")


def generate_questions(job_desc):

    prompt = f"""
    You are an interviewer.

    Based on the following Job Description,
    generate 5 interview questions.

    Job Description:
    {job_desc}
    """

    response = model.generate_content(prompt)

    return response.text