xquery version "1.0";
<root>
{
for $p in doc("experience_1.0.4.xml")/root/Image
order by $p/@ID cast as xs:integer descending
return
<Item>
      {
        <Name>{data($p/DetailedInfo/@name)}</Name>,
        <Source>{data($p/BasicInfo/@Source)}</Source>,
        $p/BasicInfo/Size,
        <Style>{data($p/DetailedInfo/Style/@name)} </Style>
      }
</Item>
}
{
for $x in doc("experience.xml")/root/Image
where $x/@ID>40
order by $x/@ID cast as xs:integer descending
return 
<Item>
    {
        <Name>{data($x/DetailedInfo/@name)}</Name>,
        <Source>{data($x/BasicInfo/@Source)}</Source>,
        $x/BasicInfo/Size,
        <Style>{data($x/DetailedInfo/Style/@name)} </Style>
    }
</Item>
}

</root>