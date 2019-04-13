xquery version "1.0";
<root>
{
for $x in doc("experience.xml")/root/Image
where $x/BasicInfo/@Author="wang1618" and $x/DetailedInfo/Style/@name="古典主义建筑风格"
order by $x/@ID cast as xs:integer descending
return $x
}
</root>
