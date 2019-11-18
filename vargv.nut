::array1 <- []
foreach(idx,val in vargv)
    array1.append(val.tointeger());
print(array1);
foreach(idx,val in array1)
    print(idx +" "+ val)
local a = "2";
print(a.tointeger() + 2)
print("\n")
print(a.tofloat() + 2)
print("\n")
print(a.len() + 2)
print("\n")
