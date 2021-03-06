module Repositories
  class Subscribers < ROM::Repository[:subscribers]
    include Import[container: 'rom']

    struct_namespace Entities

    commands :create,
      use: :timestamps,
      plugins_options: {
        timestamps: {
          timestamps: %i(created_at updated_at)
        }
      }
  end
end
