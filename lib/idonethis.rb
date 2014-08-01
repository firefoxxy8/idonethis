require 'httparty'
require 'json'

module IDoneThis

  class Client
    include HTTParty
    base_uri "https://idonethis.com/api/v0.0"

    def initialize(token)
      @token = token
    end

    def headers
      { "Authorization" => "Token #{@token}", "Content-Type" => "application/json" }
    end

    def teams
      self.class.get("/teams/", headers: headers)
    end

    def dones(query = {})
      self.class.get("/dones/", query: query, headers: headers)
    end

    def done(text, team, date = Date.today)
      self.class.post("/dones/", body: { raw_text: text, team: "#{self.class.base_uri}/teams/#{team}/", done_date: date }.to_json, headers: headers)
    end
  end

end
