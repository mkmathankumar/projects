from flask import Flask, render_template, request
import joblib

app = Flask(__name__)

model = joblib.load("fake_job_model.pkl")
vectorizer = joblib.load("vectorizer.pkl")

@app.route("/", methods=["GET", "POST"])
def home():

    prediction = None

    if request.method == "POST":

        job_text = request.form["job"]

        vect = vectorizer.transform([job_text])

        result = model.predict(vect)[0]

        if result == 1:
            prediction = "⚠ Fake Job Posting"
        else:
            prediction = "✅ Genuine Job Posting"

    return render_template(
        "index.html",
        prediction=prediction
    )

if __name__ == "__main__":
    app.run(debug=True)