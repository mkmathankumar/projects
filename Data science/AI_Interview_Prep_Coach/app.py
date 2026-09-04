import streamlit as st
from pypdf import PdfReader

from utils.question_generator import generate_questions
from utils.evaluator import evaluate_answer

st.title("AI Interview Prep Coach")

uploaded_file = st.file_uploader(
    "Upload Job Description",
    type=["txt", "pdf"]
)

job_desc = ""

if uploaded_file:

    if uploaded_file.type == "application/pdf":

        pdf = PdfReader(uploaded_file)

        for page in pdf.pages:

            text = page.extract_text()

            if text:
                job_desc += text

    else:

        job_desc = uploaded_file.read().decode("utf-8")

    st.success("Job Description Uploaded")

    if st.button("Generate Questions"):

        questions = generate_questions(job_desc)

        st.session_state.questions = questions

if "questions" in st.session_state:

    st.subheader("Generated Questions")

    st.write(st.session_state.questions)

    answer = st.text_area(
        "Enter Your Answer"
    )

    if st.button("Evaluate Answer"):

        feedback = evaluate_answer(
            st.session_state.questions,
            answer
        )

        st.subheader("Feedback")

        st.write(feedback)