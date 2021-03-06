-- Assignment
--
--1. Select the titles of all the songs on the album "Forbidden".
SELECT songs.title FROM songs INNER JOIN albums ON albums._id = songs.album
WHERE albums.name = "Forbidden";
-- answers)
-- The Illusion of Power
-- Sick and Tired
-- Can't Get Close Enough
-- Forbidden
-- Shaking Off the Chains
-- Get a Grip
-- Kiss of Death
-- Guilty as Hell
-- Rusty Angels
-- I Won't Cry for You

--2. Repeat the previous query but this time display the songs in track order. You may want to include the track number in the output to verify that it worked fine.
SELECT songs.track, songs.title FROM songs INNER JOIN albums ON albums._id = songs.album
WHERE albums.name = "Forbidden" ORDER BY songs.track;
-- answers)
-- 1|The Illusion of Power
-- 2|Get a Grip
-- 3|Can't Get Close Enough
-- 4|Shaking Off the Chains
-- 5|I Won't Cry for You
-- 6|Guilty as Hell
-- 7|Sick and Tired
-- 8|Rusty Angels
-- 9|Forbidden
-- 10|Kiss of Death

-- 3. Display all songs for the band "Deep Purple".
SELECT songs.title FROM songs
INNER JOIN albums ON albums._id = songs.album
INNER JOIN artists ON albums.artist = artists._id
WHERE artists.name = "Deep Purple";
-- answers)
-- Love Help Me (2000 Digital Remaster)
-- Might Just Take Your Life
-- And The Address (2000 Digital Remaster)
-- Fireball (Take 1 - Instrumental)
-- Maybe I'm a Leo
-- Fireball
-- No One Came
-- Mistreated
-- Smoke On The Water
-- Mary Long
-- Rat Bat Blue
-- What's Goin' On Here
-- I Need Love
-- Studio Chat
-- Hush
-- Shield
-- April (2000 Digital Remaster)
-- Wring That Neck
-- When a Blind Man Cries (B-Side)
-- Bird Has Flown (2000 Digital Remaster)
-- Highway Star
-- Pictures Of Home
-- Fools
-- Lazy
-- Smoke On The Water
-- You Fool No One
-- Speed King (Piano Version)
-- Black Night
-- Slow Train (Album Outtake)
-- Dealer
-- Mistreated
-- Pictures of Home
-- Space Truckin'
-- Our Lady ('99 Remix)
-- Child In Time
-- The Painter (2000 Digital Remaster)
-- Lady Luck
-- Sail Away
-- Bloodsucker
-- Painted Horse (studio out-take)
-- Prelude_ Happiness_I'm So Glad (Medley) (2000 Digital R
-- Woman From Tokyo ('99 Remix)
-- Black Night (Unedited Roger Glover Remix)
-- Hey Joe (BBC Top Gear Session)
-- Help (Alternate Take)
-- Listen Learn Read On
-- Love Don't Mean A Thing
-- I'm Alone (B-Side)
-- Burn
-- Space Truckin'
-- The Painter (BBC Radio Session)
-- Studio Chat
-- High Ball Shooter
-- Woman From Tokyo
-- You Fool No One
-- Studio Chat
-- The Bird Has Flown (Alternate A-Side Version) (1998 Dig
-- Third Movement- Vivace - Presto
-- Woman From Tokyo (alt.bridge)
-- River Deep Mountain High
-- Living Wreck
-- Shadows
-- Rat Bat Blue (writing session)
-- Studio Chat
-- 'A' 200
-- Studio Chat
-- Jam Stew (Unreleased Instrumental)
-- Drifter
-- Lady Double Dealer
-- Super Trouper
-- No One Came (Remix 1996)
-- Exposition - We Can Work It Out
-- Lalena (2000 Digital Remaster)
-- Speed King
-- Lay Down Stay Down
-- Into The Fire
-- Flight Of The Rat (Roger Glover Remix)
-- Strange Kind Of Woman (A-Side Remix 1996)
-- You Can't Do It Right
-- Lalena (BBC Radio Session)
-- The Mule (Drum Solo)
-- Emmaretta (1998 Digital Remaster)
-- Backwards Piano
-- Lazy (Quadrophonic Mix)
-- No No No
-- Speed King
-- Black Night (Original Single Version)
-- Hey Joe (2000 Digital Remaster)
-- Smooth Dancer
-- Love Child
-- The Gypsy
-- Lazy
-- Anyone's Daughter
-- First Day Jam (instrumental)
-- The Noise Abatement Society Tapes
-- One More Rainy Day (2000 Digital Remaster)
-- Stormbringer
-- First Movement- Moderato - Allegro
-- Child In Time
-- Lady Double Dealer
-- Never Before
-- Demon's Eye (Remix 1996)
-- Wring That Neck
-- Fault Line (2000 Digital Remaster)
-- You Keep On Moving
-- Strange Kind Of Woman
-- It's All Over (BBC Top Gear Session Bonus Track)
-- Second Movement- Andante
-- Child In Time
-- Cry Free (Roger Glover Remix)
-- Hey Bop A Re Bop (BBC Top Gear Session Bonus Track)
-- Freedom (Album Outtake)
-- Why Didn't Rosemary_ (1999 Digital Remaster)
-- Place In Line
-- Maybe I'm a Leo (Quadrophonic Mix)
-- Studio Chat
-- Rat Bat Blue ('99 Remix)
-- Wring That Neck (BBC Top Gear Session Bonus Track)
-- Encore- Third Movement- Vivace - Presto (Part)
-- Love Help Me (Instrumental Version)
-- Flight Of The Rat
-- Playground (Remixed Instrumental Studio Out Take Bonus Track)
-- [Intro]
-- Smoke On The Water
-- Gettin' Tighter
-- Demon's Eye
-- Maybe I'm A Leo
-- Stormbringer
-- When A Blind Man Cries
-- Speed King (Roger Glover Remix)
-- Anthem
-- Oh No No No (Studio Out Take Bonus Track)
-- Burn
-- Soldier Of Fortune
-- This Time Around Owed To 'G' (Instrumental)
-- Hush (Live US TV)
-- Lazy
-- Mandrake Root (1998 Digital Remaster)
-- Comin' Home
-- Hold On
-- Highway Star
-- Kentucky Woman
-- Hush (1998 Digital Remaster)
-- Highway Star
-- Blind (2000 Digital Remaster)
-- Our Lady
-- Never Before
-- Hard Lovin' Man
-- Holy Man
-- Emmaretta (BBC Top Gear Session)
-- Help (2000 Digital Remaster)
-- Chasing Shadows (2000 Digital Remaster)
-- The Mule
-- Lucille
-- Space Truckin'

-- 4. Rename the band "Mehitabel" to "One Kitten". Note: SET artists.name will not work, you just need to specifiy name.
UPDATE artists SET name = "One Kitten" WHERE name = "Mehitabel";

-- 5. Check that the record was correctly renamed.
SELECT * from artists WHERE name = "One Kitten";
-- answers)
-- 3|One Kitten

-- 6. Select the titles of all the songs by Aerosmith in alphabetical order. Include only the title in the output.
SELECT s.title FROM songs s INNER JOIN albums alb ON alb._id = s.album
INNER JOIN artists a ON a._id = alb.artist WHERE a.name = "Aerosmith" ORDER BY s.title;
-- answers)
-- (Dulcimer Stomp) The Other Side
-- (Going Down) Love In An Elevator
-- (Hoodoo) Voodoo Medicine Man
-- (Water Song) Janie's Got A Gun
-- Adam's Apple
-- Adam's Apple
-- Ain't That A Bitch
-- Amazing
-- Amazing
-- Angel
-- Angel
-- Attitude Adjustment
-- Avant Garden
-- Back In The Saddle
-- Beyond Beautiful
-- Big Ten Inch Record
-- Blind Man
-- Bone To Bone (Coney Island White Fish Boy)
-- Boogie Man
-- Can't Stop Messin'
-- Cheese Cake
-- Chip Away The Stone
-- Chip Away The Stone
-- Chiquita
-- Come Together
-- Crash
-- Crazy
-- Crazy
-- Critical Mass
-- Cryin'
-- Cryin'
-- Darkness
-- Deuces Are Wild
-- Don't Get Mad Get Even
-- Dream On
-- Dream On
-- Drop Dead Gorgeous
-- Dude (Looks Like A Lady)
-- Dude (Looks Like A Lady)
-- Dude (Looks Like A Lady)- live
-- Eat The Rich
-- Eat The Rich
-- F.I.N.E.
-- Face
-- Fallen Angels
-- Falling In Love (Is Hard On The Knees)
-- Falling Off
-- Fever
-- Flesh
-- Fly Away From Here
-- Full Circle
-- Get A Grip
-- Girl Keeps Coming Apart
-- Gotta Love It
-- Gypsy Boots
-- Hangman Jury
-- Heart's Done Time
-- Hole In My Soul
-- I Ain't Got You
-- I'm Down
-- Intro
-- Jaded
-- Jailbait
-- Janie's Got A Gun
-- Just Push Play
-- Kiss Your Past Good-Bye
-- Last Child
-- Let The Music do the Talking
-- Lick and a Promise
-- Light Inside
-- Line Up
-- Livin' On The Edge
-- Livin' On The Edge
-- Lord Of The Thighs
-- Lord Of The Thighs
-- Lord Of The Thighs
-- Love In An Elevator
-- Luv Lies
-- Magic Touch
-- Make It
-- Mama Kin
-- Mama Kin
-- Mama Kin
-- Mia
-- Monkey On My Back
-- Mother Popcorn Draw The Line
-- Movin' Out
-- My Fist Your Face
-- My Girl
-- Nine Lives
-- No More No More
-- No Surprize
-- No Surprize
-- Nobody's Fault
-- One Way Street
-- Outta Your Head
-- Pandora's Box
-- Permanent Vacation
-- Pink
-- Rag Doll
-- Rag Doll
-- Rats in the Cellar
-- Reefer Head Woman
-- Remember (Walking In The Sand)
-- Round And Round
-- Round And Round
-- S.O.S.
-- S.O.S. (Too Bad)
-- Same Old Song And Dance
-- Seasons Of Wither
-- Shame On You
-- She's On Fire
-- Shela
-- Shut Up And Dance
-- Sick As A Dog
-- Sight For Sore Eyes
-- Simoriah
-- Somebody
-- Something's Gotta Give
-- Spaced
-- St. John
-- Sunshine
-- Sweet Emotion
-- Sweet Emotion
-- Taste Of India
-- The Farm
-- The Movie
-- The Other Side
-- The Reason A dog
-- The hop
-- Think About It
-- Three Mile Smile
-- Toys In The Attic
-- Toys In The Attic
-- Train Kept A Rollin'
-- Train Kept A Rollin'
-- Train Kept A Rollin'
-- Trip Hoppin'
-- Uncle Salty
-- Under My Skin
-- Walk On Down
-- Walk On Water
-- Walk This Way
-- Walk This Way
-- Walkin' The Dog
-- What It Takes
-- What It Takes
-- Woman Of The World
-- Write Me
-- You See Me Crying
-- Young Lust

-- 7. Replace the column that you used in the previous answer with count(title) to get just a count of the number of songs.
SELECT count(s.title) FROM songs s INNER JOIN albums alb ON alb._id = s.album
INNER JOIN artists a ON a._id = alb.artist WHERE a.name = "Aerosmith" ORDER BY s.title;
-- answers)
-- 151

-- 8. Search the internet to find out how to get a list of the songs from step 6 without any duplicates.
SELECT s.title FROM songs s INNER JOIN albums alb ON alb._id = s.album
INNER JOIN artists a ON a._id = alb.artist WHERE a.name = "Aerosmith" GROUP BY s.title;
-- 9. Search the internet again to find out how to get a count of the songs without duplicates. Hint: It uses the same keyword as step 8 but syntax may not be obvious.
SELECT count(DISTINCT(s.title)) FROM songs s INNER JOIN albums alb ON alb._id = s.album
INNER JOIN artists a ON a._id = alb.artist WHERE a.name = "Aerosmith";
-- answers)
-- 128

-- 10. Repeat the previous query to find the number of artists (which, obviously, should be one) and the number of albums.
SELECT count(DISTINCT(artists.name)), count(DISTINCT(albums._id)) FROM songs
INNER JOIN albums ON albums._id = songs.album
INNER JOIN artists ON artists._id = albums.artist
WHERE artists.name = "Aerosmith";
-- answers)
-- 1|13
