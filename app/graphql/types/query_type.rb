module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :current_date, String, null: false, description: '今日の日付'
    def current_date
      Date.today.strftime("%Y年 %m月 %d日")
    end

    field :today_weather, WeatherType, null: false, description: '今日の天気'
    def today_weather
      { weather: '晴れ', temperature: 90 }
    end
  end
end
