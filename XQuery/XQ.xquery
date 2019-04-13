<root>
{
for $x in doc("experience.xml")/root/Image
where $x/@ID>40
return $x
}
{
for $p in doc("experience_1.0.4.xml")/root/Image
return $p 
}
</root>