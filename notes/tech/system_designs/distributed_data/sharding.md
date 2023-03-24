# Sharding

Splitting up a large table of data horizontally i.e. row-wise. A table containing 100s of millions of rows may be split into multiple tables containing 1 million rows each. Each of the tables resulting from the split will be placed into a separate database/server. Sharding is done to spread load and improve access speed. Facebook/twitter tables fit into this category.

Ref: https://www.quora.com/What-is-the-difference-between-replication-partitioning-clustering-and-sharding
