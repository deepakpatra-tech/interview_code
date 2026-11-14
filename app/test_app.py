from app import app

def test_home():
    client = app.test_client()

    response = client.get("/")

    assert response.status_code == 200
    assert response.json == {
        "message": "Hello from Flask CI/CD Pipeline!"
    }

def test_invalid_route():
    client = app.test_client()

    response = client.get("/invalid")

    assert response.status_code == 404
