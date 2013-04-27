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

//use<shapehelper.scad>;

outerdiam=40;
outercutdiam=35;

innerdiam=30;
innercutdiam=25;

wallthickness=1;
numberofwalls=6;

intersection()
{

	translate([(outerdiam)/4,(outerdiam)/4,0])for ( i = [0 : numberofwalls] )
	{
	    rotate( i * 360 / numberofwalls, [0, 0, 1])
	    cube([wallthickness,outerdiam+200,outerdiam+200]);
	}
	difference()
	{
		scale([outerdiam/2,outerdiam/2,outerdiam/2])aeroshape();
		translate([(outerdiam-innercutdiam)/4,(outerdiam-innercutdiam)/4,0])scale([innercutdiam/2,innercutdiam/2,outerdiam/2])aeroshape();

	}
}

difference(){
	scale([outerdiam/2,outerdiam/2,outerdiam/2])aeroshape();
	translate([(outerdiam-outercutdiam)/4,(outerdiam-outercutdiam)/4,0])scale([outercutdiam/2,outercutdiam/2,outerdiam/2])aeroshape();

}

translate([(outerdiam-innerdiam)/4,(outerdiam-innerdiam)/4,0])difference(){
	scale([innerdiam/2,innerdiam/2,outerdiam/2])aeroshape();
	translate([(innerdiam-innercutdiam)/4,(innerdiam-innercutdiam)/4,0])scale([innercutdiam/2,innercutdiam/2,outerdiam/2])aeroshape();

}

module aeroshape(){
	cube(1,1,1);
}

