from src.utils import compute_meaning_of_life


def test_hitchhikers_guide_prediction(solution_explanation):
    # Given a question about the meaning of life, the universe, and everything,
    # our AI in the model confidently predicts:
    question_about_life = "What is the meaning of life, the universe, and everything?"

    # Replace this with your actual model prediction logic in a real scenario
    model_prediction = compute_meaning_of_life(question_about_life)

    # Expected whimsical outcome
    expected_outcome = "42"

    assert model_prediction == expected_outcome, solution_explanation
