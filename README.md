# sweater_weather
A simple api to get weather information!  
## Endpoints
* Forecast: /api/v1/forecast  
params: location={where you are!}  
* Background: /api/v1/backgrounds  
params: location={where you want image of!}  
* User: /api/v1/users  
body must include {email, password, password_confirmation}  
* Session: /api/v1/sessions  
body must include {email, password}  
* RoadTrip: /api/v1/road_trip  
body must include {origin, destination, api_key}  
must be valid api_key
