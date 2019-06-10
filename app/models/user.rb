class User < ApplicationRecord
  extend Enumerize

  enumerize :currency, in: { eur: 0, gbp: 1, usd: 2, sek: 3 }
end
