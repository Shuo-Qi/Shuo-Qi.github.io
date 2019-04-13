xquery version "1.0";
<root>
{
for $x in doc("experience.xml")/root/Image
where $x/DetailedInfo/Style/@Classification="民族地域"
order by $x/@ID cast as xs:integer descending
return $x
}
</root>