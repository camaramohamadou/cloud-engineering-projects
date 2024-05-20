import base64
import requests

def hello_world(request):
    return "Hello, World!"

def trigger_pubsub(event, context):
    if 'data' in event:
        message = base64.b64decode(event['data']).decode('utf-8')
        print(f"Received message: {message}")
        response = requests.get("YOUR_CLOUD_RUN_URL")
        print(f"Cloud Run response: {response.text}")
