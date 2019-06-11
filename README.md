# AUCTION TASK
A small web app taking on the real-time currency conversion in the context of bidding for auction items.

## RUNNING THE APP
To run the app, do the following:
- Clone the repo
- Run rails `db:setup`
- Run rails `db:seed`
- Start the server with `rails s`
- Open the app at `http://localhost:3000`

## RUNNING THE TEST
The app uses rspec as a test framework. Run `rspec` to start the test suite. Currently only the `ExchangeRateStorage` class is covered.

## KNOWN ISSUES
- When the auction item has a different currency than the user currency, the user bids in their own currency and the bid is converted to the item's currency and save in that currency. When visualising the bid, the bid is converted back to the user's currecny. Often the amount is not the same as in the original bid due to the conversions. E.g. item is in EUR and user uses GBP. The user bids 1000 GBP and they are converted to EUR (~1122 EUR). When the user visits the item and looks at the bids, the amount is converted back to GBP. Depending on the rate this will differ - 1000.11 or 999.70, etc.
