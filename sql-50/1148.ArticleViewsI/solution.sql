SELECT distinct author_id FROM Views
-- since author 4 viewed their own article twice, we only want to count them once
-- therefore select distinct author_id
WHERE author_id = viewer_id
-- if author_id viewed their own article, then author_id and viewer_id will be the same
ORDER BY author_id;
-- order by author_id to get the result in ascending order