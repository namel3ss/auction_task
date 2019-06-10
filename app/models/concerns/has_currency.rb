# A concern that adds a currency enumeration to a model.
# The model is expected to have a currency attribute/column.
module HasCurrency
  extend Enumerize

  enumerize :currency, in: { eur: 0, gbp: 1, usd: 2, sek: 3 }
end
