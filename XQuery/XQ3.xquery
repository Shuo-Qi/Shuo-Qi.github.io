xquery version "1.0";
<Nation>
  {
  for $x in doc("experience.xml")/root/Image
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
</Nation>