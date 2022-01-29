<?php

$studentsCount = rand(1, 1000000);
$string = "на учебе $studentsCount студент";

/**
 * @param int $numberof
 * @param string $word
 * @param array $suffix
 * @return string
 */
function declination(int $numberof, string $word, array $suffix)
{
    $keys = [2, 0, 1, 1, 1, 2];
    $mod = $numberof % 100;
    $suffix_key = $mod > 4 && $mod < 20 ? 2 : $keys[min($mod % 10, 5)];

    return $word . $suffix[$suffix_key];
}

echo declination($studentsCount, $string, ['', 'а', 'ов']);
