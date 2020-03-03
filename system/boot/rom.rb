# frozen_string_literal: true

App.boot(:rom) do |app|
  init do
    require "rom"
    require "rom-sql"
    require "rom-repository"

    container = ROM.container(:sql, ENV['DATABASE_URL']) do |configuration|
      # configuration.relation(:subscribers) do
      #   schema(infer: true)
      #   auto_struct true
      # end
    end

    register(:rom, container)
  end
end
