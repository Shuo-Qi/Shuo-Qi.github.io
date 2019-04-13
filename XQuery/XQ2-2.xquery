xquery version "1.0";
<root>
{
for $x in doc("experience.xml")/root/Image
where $x/DetailedInfo/Style/@Classification="民族地域" and $x/DetailedInfo/Style/@name="意大利建筑风格"
order by $x/@ID cast as xs:integer descending
return $x
}
</root>