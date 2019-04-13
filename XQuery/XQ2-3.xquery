xquery version "1.0";
<root>
{
for $x in doc("experience_1.0.4.xml")/root/Image
where $x/BasicInfo/Format="png" and $x/DetailedInfo/Style/@name="北美建筑风格"
order by $x/@ID cast as xs:integer descending
return $x
}
</root>