SELECT
    a.`比赛日期` AS cdate,
    '胜' AS result
FROM
    col_row AS a
        INNER JOIN mysql.help_topic AS b
                   ON b.help_topic_id < a.`胜`
UNION ALL
SELECT
    a.`比赛日期` AS cdate,
    '负' AS result
FROM
    col_row AS a
        INNER JOIN mysql.help_topic AS b
                   ON b.help_topic_id < a.`负`
ORDER BY
    cdate,
    result;

describe mysql.help_topic;
