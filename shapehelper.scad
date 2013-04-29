//Copyright 2013 Alex Davies

//    This file is part of pareospike.

//    Foobar is free software: you can redistribute it and/or modify
//    it under the terms of the GNU Affero General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.

//    Foobar is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU Affero General Public License for more details.

//    You should have received a copy of the GNU Affero General Public License
//    along with pareospike.  If not, see <http://www.gnu.org/licenses/>.


scale([1,1,1])aeroshapehelper();
%cube([20,20,1],center=true);

//to have the measurements in shapehelper.scad be acurate, you need to have the module aeroshapehelper fill up the blue square as fully as possible.





module aeroshapehelper(){
	scale([2.5,2.5,2.5])rotate_extrude(convexity = 0, $fn = 20)translate([0,0,0])import("out.dxf");

}


//this takes shapehelper and makes it usable in aerospike.scad
module aeroshape(){
	translate([0.5,0.5,0])scale([1/20,1/20,1/20])aeroshapehelper();
}