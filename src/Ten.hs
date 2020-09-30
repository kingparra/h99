module Ten where
import Four (myLength)
import Nine (myPack)

myEncode x =
  let packed = myPack x
  in  zip (map myLength packed) (map head packed)