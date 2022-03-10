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
All endpoints can be viewed by running the `rails server` command in your terminal. In your browswer, type in `http://localhost:3000/{endpoint_get_request}` You can also view the response in [Postman](https://www.postman.com/). Below are details about each endpoint and the type of response you can expect. 

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
Content-Type: application/json
Accept: application/json
``` 

Response: 
```ruby 
{
  "data": {
    "id": null,
    "type": "forecast",
    "attributes": {
      "current_weather": {
        "datetime": "2020-09-30 13:27:03 -0600",
        "temperature": 79.4,
        etc
      },
      "daily_weather": [
        {
          "date": "2020-10-01",
          "sunrise": "2020-10-01 06:10:43 -0600",
          etc
        },
        {...} etc
      ],
      "hourly_weather": [
        {
          "time": "14:00:00",
          "conditions": "cloudy with a chance of meatballs",
          etc
        },
        {...} etc
      ]
    }
  }
}
```
