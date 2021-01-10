# INST 327 Final Project: Vinyl Record Database <br>

Team Members: Kamran Djourshari, Diego Amores, Vi Le, Guanzhi Chen, Chi-Hao Sheng <br>

## Introduction:

Vinyl records were created in the 1930s, as a method to bring music to every listener’s home environment. Vinyl records describe music albums that put different songs together, from one artist, for music listeners to enjoy. With so many different artists available, we thought it would be a good idea to highlight some of the classics/hits over the years. We were motivated to bring this information together into one database for all music listeners to enjoy and deep dive into.

## How to Construct Database:


## Logical Design

![]()
Figure 1: Our logical design was based on organizing information into categories that would make the most sense for each piece of information that we wanted to convey. <br>

## Views/Queries:
| View Name                     | Join | Filtering | Aggregation | Linking | Subquery |
|:-----------------------------:|:----:|:---------:|:-----------:|:-------:|:--------:|
| **vinyl_info**                | x    |           |             |         |          |
| **vinyl_certification**       | x    | x         |             |         |          |
| **songs_above_average_bpm**   | x    | x         | x           |         | x        |
| **label_ratings**             | x    | x         | x           | x       |          |
| **album_placement_rating**    | x    |           | x           |         | x        |
| **label_count**               | x    |           | x           |         |          |
| **tracksbygenre**             |      |           | x           |         |          |
| **vinyl_musical_info**        | x    | x         |             |         |          |
| **vinyl_budget**              | x    | x         |             |         |          |
| **vinyl_label_link**          | x    |           |             | x       |          |
| **Total**                     | 9    | 5         | 5           | 2       | 2        |

## References:
- Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more. (2019). Amazon.Com. https://www.amazon.com/
- Discogs: Music Database and Marketplace. (2010). Discogs.Com. https://www.discogs.com/
- Disconest: Musical metadata for your Records. Www.Disconest.Com. http://www.disconest.com/
- VINYL RECORDS AND CD MARKETPLACE. (n.d.). Retrieved October 16, 2020, from https://www.musicstack.com/
- Wikipedia. (2014). Wikipedia.Org. https://www.wikipedia.org/
