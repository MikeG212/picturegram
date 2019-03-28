# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Post.destroy_all

# johnJonah= User.create!({username: "johnJonah", email: "jj@dailybugle.com", password: "starwars"})
# peterParker = User.create!({username: "pParker", email: "peter@dailybugle.com", password: "starwars"})
# maryJane = User.create!({username: "maryJane", email: "mj@mail.com", password: "starwars"})
# auntMay = User.create!({username: "mayParker", email: "may@mail.com", password: "starwars"})

# post1 = Post.create!({caption: "My Spidey Sense is tingling!", user_id: peterParker.id, image_url: "https://s3.us-west-1.amazonaws.com/spidergram-dev/images/spiderVerse.jpg?response-content-disposition=inline&X-Amz-Security-Token=AgoGb3JpZ2luENH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMSKAArTccO8U%2BGCRI9qg9injWsV7qDAwchiO5Im3hYbFPjiFeT25r3cltv3%2BgZcpdgFEnhmvrmB8s4oiBCxnF7h3pS0FQBd60l2yddD12tpxWHqxeMmJvyYspQutc975txKHCwUL%2BTk7RLi9%2FUJvUbLgMAuA3h%2FO0j%2Fa640Vyj4iPawmePeG0N68PCJdwEVbeAgYtwigrSp7Bxt80w1xp2HT3sKjcnsYwAozQSky%2BT2lTxUR73ezMY5wGmuMj4bS74MW2LECzkW4roLEB3mpTZHs%2BZAMj9kMjcWt2HL4AZK0eBIe0QyheFkkmJqrsbaDdn1YqjY%2F7BbMJjxqVULAGZNmnA0q2wMINhAAGgw3NzYwNzY2NTA4NTAiDE9Jsb1Jb1hYrIMn7iq4AxwHAQ4wd8ZBmhwhkPtKGdogfox6ltE3X3K6tFVe2kF2YOaMAekKWT6I0Z8upjozVVVyPr7seFdRQsiXitsm5kLG14STHC334B4Eboy2EjupG1IGNL%2BiXfxbZ0mmS3JvZ9g2qhDVGydjmERZEXfU%2B6n1zyURzGRWdTUIxOvmFYLZZrTLLrB8xxgWKBJ4XVc%2BKCDiLks8UypUv92TxEe6nzk%2B3%2F%2FCWb4MQ%2FWGAxRfP5C4Lt%2B3EP3eTs0qc2qFPsaUDdboLK33ytPuzbiloHcLw2yhSCaX0hKmD%2FWEW7DpV%2F7q2I2bBq3qGQ%2BZ3oAAslgcMr2eBKXr3cJ9LNU4sOEGzoKB0Lan5zhnEe4A7L3VmDS44jXtyHEFuVShqvca1rB602318zmkZFTJBNF5z48pyb4%2BxHsenUN6IaW0g0wqPJLENUeWXG%2BfzdGbDmmv9SLs3EpihSJqzedXLH3vqIBrcK2pOYL0XQIDdxCJEgmq0TBJF5Z6EejIZaXLdslh2Mz1u611noNoLFQiZZjFRqcEuGxzQDD6TKeAMX%2B%2Fx6j1OWDyNIk2PUo%2B2y%2Bu8%2BK67A9TIOs6WgfL%2FGuDMJfg9OQF&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20190328T213108Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA3JMOF5FRDH7UKFWT%2F20190328%2Fus-west-1%2Fs3%2Faws4_request&X-Amz-Signature=ffb7c14ab417e511b133f9f06d767a9013e31e90e9147b4d3d68c82ec3445157"})
# post2 = Post.create!({caption: "All black everything!", user_id: peterParker.id, image_url: "https://s3.us-west-1.amazonaws.com/spidergram-dev/images/blackSuit.jpg?response-content-disposition=inline&X-Amz-Security-Token=AgoGb3JpZ2luENH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMSKAArTccO8U%2BGCRI9qg9injWsV7qDAwchiO5Im3hYbFPjiFeT25r3cltv3%2BgZcpdgFEnhmvrmB8s4oiBCxnF7h3pS0FQBd60l2yddD12tpxWHqxeMmJvyYspQutc975txKHCwUL%2BTk7RLi9%2FUJvUbLgMAuA3h%2FO0j%2Fa640Vyj4iPawmePeG0N68PCJdwEVbeAgYtwigrSp7Bxt80w1xp2HT3sKjcnsYwAozQSky%2BT2lTxUR73ezMY5wGmuMj4bS74MW2LECzkW4roLEB3mpTZHs%2BZAMj9kMjcWt2HL4AZK0eBIe0QyheFkkmJqrsbaDdn1YqjY%2F7BbMJjxqVULAGZNmnA0q2wMINhAAGgw3NzYwNzY2NTA4NTAiDE9Jsb1Jb1hYrIMn7iq4AxwHAQ4wd8ZBmhwhkPtKGdogfox6ltE3X3K6tFVe2kF2YOaMAekKWT6I0Z8upjozVVVyPr7seFdRQsiXitsm5kLG14STHC334B4Eboy2EjupG1IGNL%2BiXfxbZ0mmS3JvZ9g2qhDVGydjmERZEXfU%2B6n1zyURzGRWdTUIxOvmFYLZZrTLLrB8xxgWKBJ4XVc%2BKCDiLks8UypUv92TxEe6nzk%2B3%2F%2FCWb4MQ%2FWGAxRfP5C4Lt%2B3EP3eTs0qc2qFPsaUDdboLK33ytPuzbiloHcLw2yhSCaX0hKmD%2FWEW7DpV%2F7q2I2bBq3qGQ%2BZ3oAAslgcMr2eBKXr3cJ9LNU4sOEGzoKB0Lan5zhnEe4A7L3VmDS44jXtyHEFuVShqvca1rB602318zmkZFTJBNF5z48pyb4%2BxHsenUN6IaW0g0wqPJLENUeWXG%2BfzdGbDmmv9SLs3EpihSJqzedXLH3vqIBrcK2pOYL0XQIDdxCJEgmq0TBJF5Z6EejIZaXLdslh2Mz1u611noNoLFQiZZjFRqcEuGxzQDD6TKeAMX%2B%2Fx6j1OWDyNIk2PUo%2B2y%2Bu8%2BK67A9TIOs6WgfL%2FGuDMJfg9OQF&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20190328T215501Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA3JMOF5FRDH7UKFWT%2F20190328%2Fus-west-1%2Fs3%2Faws4_request&X-Amz-Signature=e00d7d684a6093eb478d52fa237077692e0de208ab05529a67542d777a6c987a"})
# post3 = Post.create!({caption: "Check my new movie", user_id: peterParker.id, image_url: "https://s3.us-west-1.amazonaws.com/spidergram-dev/images/spidermanMoviePoster.jpg?response-content-disposition=inline&X-Amz-Security-Token=AgoGb3JpZ2luENH%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMSKAArTccO8U%2BGCRI9qg9injWsV7qDAwchiO5Im3hYbFPjiFeT25r3cltv3%2BgZcpdgFEnhmvrmB8s4oiBCxnF7h3pS0FQBd60l2yddD12tpxWHqxeMmJvyYspQutc975txKHCwUL%2BTk7RLi9%2FUJvUbLgMAuA3h%2FO0j%2Fa640Vyj4iPawmePeG0N68PCJdwEVbeAgYtwigrSp7Bxt80w1xp2HT3sKjcnsYwAozQSky%2BT2lTxUR73ezMY5wGmuMj4bS74MW2LECzkW4roLEB3mpTZHs%2BZAMj9kMjcWt2HL4AZK0eBIe0QyheFkkmJqrsbaDdn1YqjY%2F7BbMJjxqVULAGZNmnA0q2wMINhAAGgw3NzYwNzY2NTA4NTAiDE9Jsb1Jb1hYrIMn7iq4AxwHAQ4wd8ZBmhwhkPtKGdogfox6ltE3X3K6tFVe2kF2YOaMAekKWT6I0Z8upjozVVVyPr7seFdRQsiXitsm5kLG14STHC334B4Eboy2EjupG1IGNL%2BiXfxbZ0mmS3JvZ9g2qhDVGydjmERZEXfU%2B6n1zyURzGRWdTUIxOvmFYLZZrTLLrB8xxgWKBJ4XVc%2BKCDiLks8UypUv92TxEe6nzk%2B3%2F%2FCWb4MQ%2FWGAxRfP5C4Lt%2B3EP3eTs0qc2qFPsaUDdboLK33ytPuzbiloHcLw2yhSCaX0hKmD%2FWEW7DpV%2F7q2I2bBq3qGQ%2BZ3oAAslgcMr2eBKXr3cJ9LNU4sOEGzoKB0Lan5zhnEe4A7L3VmDS44jXtyHEFuVShqvca1rB602318zmkZFTJBNF5z48pyb4%2BxHsenUN6IaW0g0wqPJLENUeWXG%2BfzdGbDmmv9SLs3EpihSJqzedXLH3vqIBrcK2pOYL0XQIDdxCJEgmq0TBJF5Z6EejIZaXLdslh2Mz1u611noNoLFQiZZjFRqcEuGxzQDD6TKeAMX%2B%2Fx6j1OWDyNIk2PUo%2B2y%2Bu8%2BK67A9TIOs6WgfL%2FGuDMJfg9OQF&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20190328T215545Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIA3JMOF5FRDH7UKFWT%2F20190328%2Fus-west-1%2Fs3%2Faws4_request&X-Amz-Signature=920442a40bec6bbde2aadfb6a9927f3f284b2c4d702a39451d2ea16bfaf53a98"})