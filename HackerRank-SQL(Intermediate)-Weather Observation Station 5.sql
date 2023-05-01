------------------[𝐒𝐐𝐋 𝐈𝐧𝐭𝐞𝐫𝐦𝐞𝐝𝐢𝐚𝐭𝐞 𝐂𝐡𝐚𝐥𝐥𝐞𝐧𝐠𝐞 | 𝐖𝐞𝐚𝐭𝐡𝐞𝐫 𝐎𝐛𝐬𝐞𝐫𝐯𝐚𝐭𝐢𝐨𝐧 𝐒𝐭𝐚𝐭𝐢𝐨𝐧 𝟓 𝐅𝐫𝐨𝐦 𝐇𝐚𝐜𝐤𝐞𝐫𝐑𝐚𝐧𝐤]---------------------------

SELECT city, LENGTH(city) AS length
FROM Station
WHERE LENGTH(city) = (
    SELECT MIN(LENGTH(city))
    FROM Station
)
ORDER BY city ASC
LIMIT 1;

SELECT city, LENGTH(city) AS length
FROM Station
WHERE LENGTH(city) = (
    SELECT MAX(LENGTH(city))
    FROM Station
)
ORDER BY city ASC
LIMIT 1;
