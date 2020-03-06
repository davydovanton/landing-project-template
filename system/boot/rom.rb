# frozen_string_literal: true


App.boot(:rom) do |app|
  init do
    require "rom"
    require "rom-sql"
    require "rom-repository"

    config = ROM::Configuration.new(:sql, ENV['DATABASE_URL'], extensions: [:pg_json])
    config.auto_registration(app.root + "lib/relations")

    container = ROM.container(config) do |configuration|
      configuration.gateways[:default].use_logger(Logger.new($stdout))
    end

    register(:rom, container)
  end
end
