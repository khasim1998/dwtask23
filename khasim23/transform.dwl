%dw 2.0
output application/json
/* In this Iam going to explain about the function filterobject it is applied on the single object and it works on the key,value pairs within that object and then based on the true or false expression of the filterobject condtion which we have specified we get the output
*/
---
/*as I mentoined filterobject will work on single object so we have changed the payload with some index  in this payload i want to exclude the null thats why i am using this condition*/

//payload[0] filterObject ((value, key, index) -> value !=null )


/*in the above payload i want only key,value pairs which is having null so i use this condition*/

//payload[0] filterObject ((value, key, index) -> value == null)


/*in the payload i want the value which contains tutorials then i have to use this condition*/

//payload[0] filterObject ((value, key, index) -> value contains   "tutorials")

/*in the payload i want the index which is greater than 1  then i have to use this condition*/

payload[0] filterObject ((value, key, index) ->index >1 )
