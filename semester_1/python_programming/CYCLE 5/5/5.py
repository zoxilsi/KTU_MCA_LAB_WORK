"""
Create a package graphics with modules rectangle, circle and sub-package 3D-graphics with modules cuboid and sphere. 
Include methods to find area and perimeter of respective figures in each module. 
Write programs that finds area and perimeter of figures by different importing statements. 
(Include selective import of modules and import * statements)

"""
from Graphics.rectangle import *
from Graphics.circle import *
from Graphics.threeDGraphics.cuboid import *
from Graphics.threeDGraphics.sphere import *

prin("Rectangle")
l=int(input("Enter the length:"))
b=int(input("Enter the breadth :"))
print("Area of rectangle:",RectArea(l,b))
print("Area of rectangle:",RectPerimeter(l,b))

print("Circle")
r=int(input("Enter the radius :"))
print("Circle Area:",CircleArea(r))
print("Circle Perimeter:",CirclePerimeter(r))


print("Cuboid")
l=int(input("Enter the length:"))
w=int(input("Enter the width :"))
h=int(input("Enter the height:"))
CuboidArea(l,w,h)
CuboidPerimeter(l,w,h)


print("Sphere")
r=int(input("Enter the radius : "))
print("Sphere Area:",SphereArea(r))
print("Sphere Perimeter:",SphereVolume(r))