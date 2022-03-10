# Sweater Weather
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-this-project">About This Project</a>
      <ul>
        <li><a href="#learning-goals-of-project">Learning Goals of Project</a></li>
      </ul>
      <ul>
        <li><a href="#versions">Versions</a></li>
      </ul>
      <ul>
        <li><a href="#important-gems">Important Gems</a></li>
      </ul>
      <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#endpoints">Endpoints</a></li>
  </ol>
</details>

## About This Project

This is the back-end project to plan road trips. This app will allow users to see the current weather as well as the forecasted weather at the destination.

#### Learning Goals of Project 

- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Determine completion criteria based on the needs of other developers
- Research, select, and consume an API based on your needs as a developer

#### Versions

- Ruby 2.7.2

- Rails 5.2.6

#### Important Gems
Testing: [rspec-rails](https://github.com/rspec/rspec-rails), [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers), [simplecov](https://github.com/simplecov-ruby/simplecov)

API: [faraday](https://github.com/lostisland/faraday), [figaro](https://github.com/laserlemon/figaro), [jsonapi-serializer](https://github.com/fotinakis/jsonapi-serializers)

### Local Setup

1. Fork and Clone the repo
2. Install gem packages: `bundle install`
3. Setup the database: `rails db:create`
4. Run migrations: ` rails db:migrate`
6. Create an account with [Open Weather Map](https://home.openweathermap.org/users/sign_up) and request an API key
7. Create an account with [Map Quest] (https://developer.mapquest.com/documentation/geocoding-api/address/get/) and request an API key
9. Create an account with [Pexel](https://www.pexels.com/api/) and request an API key
10. Install the Figaro gem: `bundle exec figaro install`
11. Add your API key to the `application.yml` created by Figaro:
  ```rb
  MAPQUEST_KEY: your_api_key
  OPENWEATHER_KEY: your_api_key
  PEXEL_KEY: your_api_key
  ```
  
## Endpoints 
All endpoints can be viewed by running the `rails server` command in your terminal. In your browswer, type in `http://localhost:3000/{endpoint_get_request}`

| Request Type  | URI           |  
| ------------- | ------------- |
| GET  |  /api/v1/forecast?location={location}  |
| GET  |  /api/v1/backgrounds?location={location} |
| POST | /api/v1/users |
| POST | /api/v1/sessions |
| POST | /api/v1/road_trip | 

#### Application Landing Page
| Request Type | URI           | Description  | 
| ------------- | ------------- | ------------ | 
| GET  |  /api/v1/forecast?location={location}  |Returns current forecast for given location. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY' | 
| GET  |  /api/v1/backgrounds?location={location} | Returns url and details of a background image to display for given location. Location must be sent as 'city, state abbreviation' like 'Boston, MA' or 'New York, NY' |

Request: 
```ruby 
GET /api/v1/forecast?location=denver,co
``` 

Response: 
```ruby 
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "current_weather": {
                "datetime": "2022-03-10 02:03:05 UTC",
                "sunrise": "12:22",
                "sunset": "00:05",
                "temperature": 279.94,
                "feels_like": 277.75,
                "humidity": 70,
                "uvi": 0,
                "visibility": 10000,
                "description": "clear sky",
                "icon": "01n"
            },
            "daily_weather": [
                {
                    "dt": "2022-03-09",
                    "sunrise": "12:22",
                    "sunset": "00:05",
                    "max": 284.57,
                    "min": 274.58,
                    "description": "clear sky",
                    "icon": "01d"
                },
                {
                    "dt": "2022-03-10",
                    "sunrise": "12:20",
                    "sunset": "00:06",
                    "max": 286.97,
                    "min": 276.82,
                    "description": "clear sky",
                    "icon": "01d"
                },
                {
                    "dt": "2022-03-11",
                    "sunrise": "12:19",
                    "sunset": "00:07",
                    "max": 287.83,
                    "min": 272.78,
                    "description": "snow",
                    "icon": "13d"
                },
                {
                    "dt": "2022-03-12",
                    "sunrise": "12:18",
                    "sunset": "00:07",
                    "max": 273.97,
                    "min": 267.09,
                    "description": "clear sky",
                    "icon": "01d"
                },
                {
                    "dt": "2022-03-13",
                    "sunrise": "12:16",
                    "sunset": "00:08",
                    "max": 284.17,
                    "min": 270.43,
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "hourly_weather": [
                {
                    "dt": 2,
                    "temp": 279.94,
                    "description": "clear sky",
                    "icon": "01n"
                },
                {
                    "dt": 3,
                    "temp": 279.86,
                    "description": "clear sky",
                    "icon": "01n"
                },
                {
                    "dt": 4,
                    "temp": 279.72,
                    "description": "few clouds",
                    "icon": "02n"
                },
                {
                    "dt": 5,
                    "temp": 279.37,
                    "description": "scattered clouds",
                    "icon": "03n"
                },
                {
                    "dt": 6,
                    "temp": 278.96,
                    "description": "scattered clouds",
                    "icon": "03n"
                },
                {
                    "dt": 7,
                    "temp": 278.62,
                    "description": "overcast clouds",
                    "icon": "04n"
                },
                {
                    "dt": 8,
                    "temp": 278.2,
                    "description": "overcast clouds",
                    "icon": "04n"
                },
                {
                    "dt": 9,
                    "temp": 277.97,
                    "description": "overcast clouds",
                    "icon": "04n"
                }
            ]
        }
    }
}
```

Request: 
```ruby 
GET /api/v1/backgrounds?location=denver,co
```

Response: 
```ruby 
{
    "data": {
        "id": null,
        "type": "image",
        "attributes": {
            "photo_info": {
                "location": "wynne,arkansas",
                "image_url": "https://www.pexels.com/photo/woman-sitting-on-edge-of-rock-formation-1202821/",
                "credit": "Jordan Benton"
            }
        }
    }
}

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
| POST | /api/v1/users | A post request can be sent to the URI above. |

Request:
```ruby
POST /api/v1/users

{
  "email": "6@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

Response:
```ruby 
{
    "data": {
        "id": "328",
        "type": "users",
        "attributes": {
            "email": "6@example.com",
            "api_key": "756c74586cc0efda979ea3a3e06f3fd2"
        }
    }
}
```

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
| POST | /api/v1/sessions | A post request can be sent to the above URI. |

Request: 
```ruby
POST /api/v1/sessions

{
  "email": "6@example.com",
  "password": "password"
}
```

Response:
```ruby
{
    "data": {
        "id": "328",
        "type": "users",
        "attributes": {
            "email": "6@example.com",
            "api_key": "756c74586cc0efda979ea3a3e06f3fd2"
        }
    }
}
```

| Request  | URI           | Description  |
| ------------- | ------------- | ------------ |
|POST | /api/v1/road_trip | A post request can be sent to the above uri, sending over an origin (ex. 'Boston, MA'), a destination (ex. 'Denver, CO'), and a valid api key in the body of the request. If the locations are able to be traversed via car, and the api key is valid, the response will send the destination and origin city, total travel time, and estimated weather upon arrival at destination city. Must include both origin and destination city and valid api key|

Request: 
```ruby
POST /api/v1/road_trip

body:

{
  "start_city": "denver,co",
  "end_city": "pueblo,co",
  "api_key": "756c74586cc0efda979ea3a3e06f3fd2"
}
```

Response: 
```ruby 
{
    "data": {
        "id": null,
        "type": "roadtrip",
        "attributes": {
            "start_city": "denver,co",
            "end_city": "pueblo,co",
            "travel_time": "02:34:44",
            "weather_at_eta": {
                "temperature": 21.1,
                "conditions": "light snow"
            }
        }
    }
}
```

## Running the tests

Run `bundle exec rspec` to run the test suite
