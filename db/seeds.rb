User.find_or_create_by!(email: 'john.doe@example.com', name: 'John Doe')

item1 = AuctionItem.find_or_create_by!(name: 'Auction Item 1')
item1.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac porttitor tortor. Vestibulum mi odio, posuere id finibus non, malesuada id lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce et egestas ante, ac dictum nibh. Proin euismod, metus a dictum varius, libero urna tincidunt orci, ac auctor sem tellus a arcu. Sed ipsum nisl, molestie dapibus felis mollis, condimentum suscipit diam. Etiam semper magna vitae erat malesuada vehicula. Aenean a semper massa. Nunc blandit id odio in tempus. Vestibulum eget dictum velit, in ultricies nunc. Duis mattis diam vitae congue pretium."
item1.price = 100
item1.currency = 0
item1.save

item2 = AuctionItem.find_or_create_by!(name: 'Auction Item 2')
item2.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac porttitor tortor. Vestibulum mi odio, posuere id finibus non, malesuada id lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce et egestas ante, ac dictum nibh. Proin euismod, metus a dictum varius, libero urna tincidunt orci, ac auctor sem tellus a arcu. Sed ipsum nisl, molestie dapibus felis mollis, condimentum suscipit diam. Etiam semper magna vitae erat malesuada vehicula. Aenean a semper massa. Nunc blandit id odio in tempus. Vestibulum eget dictum velit, in ultricies nunc. Duis mattis diam vitae congue pretium."
item2.price = 500
item2.currency = 1
item2.save
